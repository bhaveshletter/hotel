# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Hotelapp.destroy_all
hotel = Hotelapp.create([{ name: 'Radisson' ,address: 'wagholi' ,city: 'pune',country: 'india' ,contact: '12345678', zipcode: '12345'}])
#   Character.create(name: 'Luke', movie: movies.first)

Room.destroy_all

	1.upto(5) do |i|
   		Room.create(
		room_type: 'deluxe', bed_type: 'queen',pool_facing: 'false', gym: 'false' , breakfast: 'false',pick_n_drop: 'false' ,price: '7000.0' , room_no: "0#{i}" , room_floor: 'A' , hotelapp_id: "1", image: File.open(File.join(Rails.root, "/app/assets/images/page1_img3.jpg")))
	end

	1.upto(5) do |i|
   		Room.create(
		room_type: 'deluxe', bed_type: 'queen',pool_facing: 'false', gym: 'false' , breakfast: 'false',pick_n_drop: 'false' ,price: '7000.0' , room_no: "0#{i}" , room_floor: 'B' , hotelapp_id: "1", image: File.open(File.join(Rails.root, "/app/assets/images/page1_img3.jpg")))
	end

	1.upto(5) do |i|
   		Room.create(
		room_type: 'deluxe', bed_type: 'queen',pool_facing: 'false', gym: 'false' , breakfast: 'false',pick_n_drop: 'false' ,price: '7000.0' , room_no: "0#{i}" , room_floor: 'C' , hotelapp_id: "1", image: File.open(File.join(Rails.root, "/app/assets/images/page1_img3.jpg")))
	end


    1.upto(5) do |i|
   		Room.create(
		room_type: 'deluxe', bed_type: 'queen',pool_facing: 'false', gym: 'false' , breakfast: 'false',pick_n_drop: 'false' ,price: '7000.0' , room_no: "0#{i}" , room_floor: 'D' , hotelapp_id: "1", image: File.open(File.join(Rails.root, "/app/assets/images/page1_img3.jpg")))
	end

	6.upto(10) do |i|
   		Room.create(
		room_type: 'luxury', bed_type: 'queen',pool_facing: 'yes', gym: 'false' , breakfast: 'false',pick_n_drop: 'false' ,price: '8500.0' , room_no: "0#{i}" , room_floor: 'A' , hotelapp_id: "1", image: File.open(File.join(Rails.root, "/app/assets/images/page1_img3.jpg")))
	end


	6.upto(10) do |i|
   		Room.create(
		room_type: 'luxury', bed_type: 'queen',pool_facing: 'yes', gym: 'false' , breakfast: 'false',pick_n_drop: 'false' ,price: '8500.0' , room_no: "0#{i}" , room_floor: 'B' , hotelapp_id: "1", image: File.open(File.join(Rails.root, "/app/assets/images/page1_img3.jpg")))
	end

	6.upto(10) do |i|
   		Room.create(
		room_type: 'luxury', bed_type: 'queen',pool_facing: 'yes', gym: 'false' , breakfast: 'false',pick_n_drop: 'false' ,price: '8500.0' , room_no: "0#{i}" , room_floor: 'C' , hotelapp_id: "1", image: File.open(File.join(Rails.root, "/app/assets/images/page1_img3.jpg")))
	end


	6.upto(10) do |i|
   		Room.create(
		room_type: 'luxury', bed_type: 'queen',pool_facing: 'yes', gym: 'false' , breakfast: 'false',pick_n_drop: 'false' ,price: '8500.0' , room_no: "0#{i}" , room_floor: 'D' , hotelapp_id: "1", image: File.open(File.join(Rails.root, "/app/assets/images/page1_img3.jpg")))
	end

	11.upto(20) do |i|
   		Room.create(
		room_type: 'luxury suites', bed_type: 'king',pool_facing: 'yes', gym: 'false' , breakfast: 'false',pick_n_drop: 'false' ,price: '12000.0' , room_no: "0#{i}" , room_floor: 'D' , hotelapp_id: "1", image: File.open(File.join(Rails.root, "/app/assets/images/page1_img3.jpg")))
	end


	1.upto(2) do |i|
   		Room.create(
		room_type: 'luxury suites', bed_type: 'king',pool_facing: 'yes', gym: 'false' , breakfast: 'false',pick_n_drop: 'false' ,price: '12000.0' , room_no: "0#{i}" , room_floor: 'E' , hotelapp_id: "1", image: File.open(File.join(Rails.root, "/app/assets/images/page1_img3.jpg")))
	end

    3.upto(10) do |i|
   		Room.create(
		room_type: 'presidential suites', bed_type: 'king',pool_facing: 'yes', gym: 'yes' , breakfast: 'false',pick_n_drop: 'false' ,price: '20000.0' , room_no: "0#{i}" , room_floor: 'E' , hotelapp_id: "1", image: File.open(File.join(Rails.root, "/app/assets/images/page1_img3.jpg")))
	end
