# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} color
# @return {Integer[][]}
def flood_fill(image, sr, sc, color)
  original_color = image[sr][sc]
  if color == original_color
    return image
  end
  stack = [[sr, sc]]
  max_row = image.length - 1
  max_column = image[0].length - 1
  while stack.length > 0
    row, column = stack.pop
    image[row][column] = color
    if row != 0 && image[row - 1][column] == original_color
      stack.push([row - 1, column])
    end
    if row != max_row && image[row + 1][column] == original_color
      stack.push([row + 1, column])
    end
    if column != 0 && image[row][column - 1] == original_color
      stack.push([row, column - 1])
    end
    if column != max_column && image[row][column + 1] == original_color
      stack.push([row, column + 1])
    end
  end
  return image
end
