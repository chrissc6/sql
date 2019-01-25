select r.Description, r.status, concat(u.firstname,' ',u.lastname) as 'Full Name',
	v.name, p.name, rl.quantity, 
	FORMAT(p.price, 'c') as 'Price', rl.quantity * p.price as 'Line Total'

from requests r
join users u
	on r.usersid = u.id
join requestlines rl
	on r.id = rl.requestsid
join products p
	on rl.productsid = p.id
join vendors v
	on v.id = p.vendorsid

where r.id = 1