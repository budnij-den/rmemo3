Meter.create(value_total:  1, feature: :gas)# , placed_at: :kitch )
Meter.create(value_total:  2, feature: :hwater)# , placed_at: :bath )
Meter.create(value_total:  3, feature: :cwater)# , placed_at: :bath )
Meter.create(value_total:  4, feature: :electr)# , placed_at: :hall )

@notes=Note.all
Note.all.each do |note|
	note=@notes.where(meter_id: meter.id)
	p note
	unless note
		Note.create(meter_id: meter.id)		
	end
end

