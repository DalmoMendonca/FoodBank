class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy, :add]
  before_filter :load_recipient

  # GET /contacts
  # GET /contacts.json
  def index
    #@contacts = Contact.all
    @contacts = @recipient.contacts.all
    #format.json { head :no_content }
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @contact = @recipient.contacts.find(params[:id])
  end

  # GET /contacts/new
  def new
    #@contact = Contact.new
    @recipient = Recipient.find(params[:recipient_id]) #instead of :id
    @contact = @recipient.contacts.new
    #respond_with(@contact)
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    #@recipient = Recipient.find(params[:recipient_id]) #instead of :id
    @contact = @recipient.contacts.new(contact_params)
    #@contact = Contact.new

    respond_to do |format|
      if @contact.save
        format.html { redirect_to [@recipient, @contact], notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:date, :note, :action, :recipient_id)
    end

    def load_recipient
      @recipient = Recipient.find(params[:recipient_id])
    end
  end
