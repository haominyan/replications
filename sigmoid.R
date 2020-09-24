sigmoid = function(x){
  1/(1 +exp(-x))
}

base = 0.01
scaler = 0.09
sku = 1:10
sort_fe = base + scaler*(1/sku)
sort_fe
plot(sku, sort_fe)

sku_fe = base + scaler*(1/sku)
sku_fe
plot(sku, sku_fe)

base_impression = 100000
imp_scaler = 800000
impression_fe = base_impression + imp_scaler *(1/sku)
impression_fe
plot(sku, impression_fe)

clicks_1 = sigmoid(sku_fe + sort_fe) * impression_fe
sum(clicks_1)

clicks_2 = sigmoid(rev(sku_fe) + sort_fe) * impression_fe
sum(clicks_2)

