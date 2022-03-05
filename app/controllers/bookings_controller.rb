class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
    @passengers = @booking.passengers
  end

  def new
    @booking = Booking.new(flight_id: params[:flight_id])
    @passenger_count = params[:num_passengers].to_i
    @passenger_count.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      @booking.passengers.each { |passenger| PassengerMailer.booking_confirmation_email(@booking, passenger).deliver_now }
      
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def booking_params
    params.require(:booking).permit(:id, :confirmation, :flight_id, 
      passengers_attributes: [:id, :name, :email]
    ) 
  end

end
