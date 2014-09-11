require 'Trollop'
require "./sendgrid.rb"
require "./emailRecord.rb"
require 'byebug'

################# Command Line Options - jobtype, directory,jobno #################

opts = Trollop::options do
  version "Sendgrid Processor 0.0.1"
  banner <<-EOS
Finds bounced email addresses in the Sendgrid bounce reports

Usage:
       start.rb -t <Bounce> -d <date>
where [options] are:
  EOS
  opt :type, "Look up the type of report your after ie 'bounce'", :type => String, :short => "-t"
  opt :date, "Date of the email activity (YYYY-MM-DD)", :type => String, :short => "-d"
  opt :api_user, "Sendgrid Username / email", :type => String, :short => "-u"
  opt :api_key, "Sendgrid password", :type => String, :short => "-p"
end
#byebug
if opts.type != "bounce"
  Trollop::die "Supported options are 'bounce'"
end

if opts.date != nil #|| opts.date != ""
  if (/^(19|20)\d\d[-](0[1-9]|1[012])[-](0[1-9]|[12][0-9]|3[01])$/.match(opts.date))  #
    puts "Date Is Good"
  else
    Trollop::die "Your date is wrong it must be YYYY-MM-DD"
  end
else
  puts "defaulting to grab 3 days of failures"
end



if opts.api_user == nil || opts.api_user == ""
  Trollop::die "Sendgrid Username Required"
end

if opts.api_key == nil || opts.api_key == ""
  Trollop::die "Sendgrid Password Required"
end

####################################################################################


itemcount=0

sendgrid=Sendgrid.new(opts.api_user, opts.api_key)
store=Email_Record.new

rtnjson=sendgrid.bounces(opts.date)

rtnjson.each do |item|
  itemcount += 1
  store.record(item['email'], item['status'], item['reason'], item['created'])
  puts "#{store.email} #{store.error_status} #{store.error_reason} #{store.error_date}"
end

puts "Total number of emails processed #{itemcount.to_s}"