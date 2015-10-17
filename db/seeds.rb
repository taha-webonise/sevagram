['Charitable Trust', 'Oldage Home', 'Orphanage', 'Children Welfare',
 'Educational Trust', 'Community Welfare Service'].each do |name|
  Tag.find_or_create_by(name: name)
end
