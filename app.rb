require 'sinatra'
require 'sinatra/reloader'
require './lib/address'
require './lib/contact'
require './lib/email'
require './lib/phone_number'
require 'pry'
also_reload 'lib/**/*.rb'

get '/' do
  erb :contacts_form
end

post '/contacts_form' do
  first_name = params.fetch('first-name')
  last_name = params.fetch('last-name')
  job_title = params.fetch('job-title')
  company = params.fetch('company')
  new_contact = Contact.new(:first_name => first_name, :last_name => last_name, :job_title => job_title, :company => company)
  personal_phone = params.fetch('personal-phone')
  work_phone = params.fetch('work-phone')
  other_phone = params.fetch('other-phone')
  Phone.new(:phone_number => personal_phone).save_personal
  Phone.new(:phone_number => work_phone).save_work
  Phone.new(:phone_number => other_phone).save_other
  new_contact.add_phone(Phone.all)
  personal_email = params.fetch('personal-email')
  work_email = params.fetch('work-email')
  other_email = params.fetch('other-email')
  Email.new(:email_address => personal_email).save_personal
  Email.new(:email_address => work_email).save_work
  Email.new(:email_address => other_email).save_other
  new_contact.add_email(Email.all)
  home_address = params.fetch('home-address')
  other_address = params.fetch('other-address')
  po_box = params.fetch('po-address')
  Address.new(:address => home_address).save_home
  Address.new(:address => other_address).save_other
  Address.new(:address => po_box).save_po
  new_contact.add_address(Address.all)
  new_contact.save
  binding.pry

  erb :contacts_form
end
