Position = {}

function Position.equals(pos1, pos2)
  return pos1.x == pos2.x and pos1.y == pos2.y and pos1.z == pos2.z
end

function Position.greaterThan(pos1, pos2, orEqualTo)
  if orEqualTo then
    return pos1.x >= pos2.x or pos1.y >= pos2.y or pos1.z >= pos2.z
  else
    return pos1.x > pos2.x or pos1.y > pos2.y or pos1.z > pos2.z
  end
end

function Position.lessThan(pos1, pos2, orEqualTo)
  if orEqualTo then
    return pos1.x <= pos2.x or pos1.y <= pos2.y or pos1.z <= pos2.z
  else
    return pos1.x < pos2.x or pos1.y < pos2.y or pos1.z < pos2.z
  end
end

function Position.isInRange(pos1, pos2, minXRange, maxXRange, minYRange, maxYRange)
  return (pos2.x >= pos1.x-minXRange and pos2.x <= pos1.x+maxXRange and pos2.y 
    >= pos1.y-minYRange and pos2.y <= pos1.y+maxYRange and pos2.z == pos1.z);
end