json-doc("db.json").users[]
count(json-doc("db.json").users[])
for $u in json-doc("db.json").users[]
where $u.age > 16
return $u
for $u in json-doc("db.json").users[]
return {
  "username": $u.name,
  "isAdult": $u.age >= 18
}
for $u in json-doc("db.json").users[]
group by $age := $u.age
return {
  "age": $age,
  "count": count($u)
}
