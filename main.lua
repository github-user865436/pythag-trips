local Triples = {}
for C = 3, 99 do
  for A = 1, C - 1 do
    for B = 1, A - 1 do
      local Dupe = false
      for K = 2, C - 1 do
        if math.floor(A / K) == A / K and math.floor(B / K) == B / K and math.floor(C / K) == C / K then
          Dupe = true
        end
        if A*A + B*B == C*C and not Dupe then
          table.insert(Triples, {A, B, C})
        end
      end
    end
  end
end
