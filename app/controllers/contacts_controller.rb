# frozen_string_literal: true

class ContactsController < ApplicationController
  def index
    @contact = Contact.all
  end
end
