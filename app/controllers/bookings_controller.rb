class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
    @passengers = @booking.passengers
  end

  def new
    @booking = Booking.new(confirmation: "RandText", flight_id: params[:flight_id])
    @passenger_count = params[:num_passengers].to_i

    @passenger_count.times do
      @booking.passengers.build
    end
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end

    # params[:booking]
    # params[:booking][:confirmation]
    # params[:booking][:flight_id]
    # params[:booking][:passengers_attributes]
    # params[:booking][:passengers_attributes]["0"]
    # params[:booking][:passengers_attributes]["0"][:name]
    # params[:booking][:passengers_attributes]["0"][:email]
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
