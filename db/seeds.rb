Branch.destroy_all
Bird.destroy_all
Tree.destroy_all

macaw = Bird.create name: "Macaw"
toucan = Bird.create name: "Toucan"
flamingo = Bird.create name: "Flamingo"

oak = Tree.create name: "Oak"
redwood = Tree.create name: "Redwood"
pine = Tree.create name: "Pine"
dead = Tree.create name: "Dead"

Branch.create bird: macaw, tree: oak
Branch.create bird: toucan, tree: oak
Branch.create bird: flamingo, tree: oak
Branch.create bird: toucan, tree: redwood
Branch.create bird: macaw, tree: dead
Branch.create bird: toucan, tree: pine
Branch.create bird: flamingo, tree: pine
Branch.create bird: flamingo, tree: dead
Branch.create bird: macaw, tree: redwood

