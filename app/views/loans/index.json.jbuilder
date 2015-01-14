json.array!(@loans) do |loan|
  json.extract! loan, :id, :fechaEntrega, :cantidad, :ubicacion, :observaciones, :correo
  json.url loan_url(loan, format: :json)
end
