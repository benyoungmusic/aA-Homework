class Map
    def initialize
        @map = Array.new {Array.new(2)}
    end

    def set(key, value)
        has_key = false
        @map.each do |sub_arr|
            if sub_arr[0] == key
                has_key = true
                sub_arr[1] = value
            end
        end
        @map << [key, value] if has_key == false
    end

    def get(key)
        @map.each do |sub_arr|
            if sub_arr[0] == key
                return sub_arr[1]
            end
        end
        p "no key"
    end

    def delete(key)
        has_key = false
        @map.each_with_index do |sub_arr, i|
            if sub_arr[0] == key
                @map.delete_at(i)
                has_key = true
            end
        end
        p "no key" if has_key == false
    end

    def show
        @map
    end

end

map = Map.new
map.set("one", 1)
map.set("two", 2)
map.set("three", 3)
map.set("four", 4)
p map.show
map.delete("three")
p map.show
map.delete("three")
p map.show
map.set("two", 4)
p map.show
p map.get("two")

