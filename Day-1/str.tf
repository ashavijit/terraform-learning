resource "random_string" "string_random" {
    length = 6
    special = true
    override_special = "_%@+-"
}

output "string_random" {
  value = random_string.string_random.result
}

# Multiple operations