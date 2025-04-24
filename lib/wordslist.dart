
final words = ['cloud', 'table', 'chair', 'bread', 'fruit', 'dance', 'flute',
         'grape', 'image', 'jelly', 'computer', 'generate', 'puzzle',
         'recipe', 'shadow', 'fiddle', 'pocket', 'rested', 'stamps',
         'wallet', 'accommodate', 'conversation', 'declaration',
         'exploration', 'harmonious', 'phenomenon', 'restaurant', 'vacation',
         'narrative', 'cathedral', 'guitar', 'piano', 'symphony', 'lion',
         'elephant', 'kangaroo', 'apple', 'banana', 'giraffe', 'umbrella',
         'school', 'pencil', 'garden', 'butterfly', 'window', 'mountain',
         'river', 'cookie', 'pillow', 'blanket', 'monkey', 'camera', 'bottle',
         'kitten', 'zebra', 'castle', 'forest', 'rocket', 'family', 'orange',
         'rainbow', 'summer', 'turtle', 'dolphin', 'rabbit', 'balloon', 'pancake',
         'sandwich', 'jungle', 'ladder', 'penguin', 'snowman', 'pirate', 'awkward',
         'rhythm', 'mnemonic', 'subtle', 'quartz', 'numbskull', 'buffoon', 'whimsical',
         'xylophone', 'knapsack', 'eclipse', 'zucchini', 'jazzy', 'yacht', 'phantom',
         'gossip', 'blizzard', 'cryptic', 'jigsaw', 'nightmare', 'peach', 'melon',
         'lemon', 'plum', 'cherry', 'mango', 'dog', 'cat', 'mouse', 'horse', 'sheep',
         'goat', 'duck', 'cow', 'pig', 'car', 'bus', 'bike', 'jeep', 'van', 'plane',
         'boat', 'train', 'truck', 'scooter', 'hat', 'shirt', 'pants', 'shoes', 'socks',
         'jacket', 'gloves', 'scarf', 'belt', 'dress', 'sun', 'moon', 'star', 'rain',
         'snow', 'wind', 'storm', 'sky', 'fog', 'ball', 'doll', 'toy', 'blocks', 'kite',
         'swing', 'slide', 'games', 'pen', 'book', 'bag', 'ruler', 'paper', 'chalk',
         'board', 'desk', 'notebook', 'cheese', 'butter', 'cake', 'pizza', 'soup',
         'salad', 'rice', 'pasta', 'house', 'door', 'lamp', 'bed', 'sofa', 'clock',
         'mirror', 'bridge', 'planet', 'island', 'basket', 'ticket', 'candle', 'helmet',
         'parrot', 'napkin', 'trophy', 'flower', 'winter', 'autumn', 'spring', 'desert',
         'airport', 'library', 'market', 'circus', 'subway', 'kitchen', 'garage', 'laundry',
         'awkward', 'gnome', 'liaison', 'plaque', 'sphinx', 'opaque', 'czar', 'queue',
         'schnitzel', 'jukebox', 'bizarre', 'macabre', 'chivalry', 'vortex', 'haphazard',
         'fuchsia', 'bequeath', 'zephyr', 'gazebo', 'nightmare', 'flabbergast', 'dilemma',
         'mirage', 'nostalgia', 'banquet', 'wrinkle', 'goblet', 'topple', 'plummet', 'grumble',
         'cylinder', 'fathom', 'hazard', 'jinx', 'voodoo'];

final wordBank = {
  'easy': {
    'animal': ['cat', 'dog', 'goat', 'pig', 'cow', 'sheep', 'duck', 'mouse', 'horse'],
    'fruit': ['apple', 'plum', 'grape', 'mango', 'lemon', 'melon', 'peach'],
    'object': ['hat', 'pen', 'book', 'bag', 'ball', 'kite', 'lamp', 'clock', 'toy'],
    'transport': ['car', 'bus', 'bike', 'van', 'boat'],
    'weather': ['sun', 'rain', 'fog', 'wind', 'winter', 'autumn', 'spring', 'snow'],
  },
  'medium': {
    'food': ['bread', 'pasta', 'pizza', 'soup', 'butter', 'cheese', 'salad', 'cake'],
    'household': ['table', 'chair', 'mirror', 'candle', 'blanket', 'pillow', 'basket'],
    'place': ['school', 'bridge', 'market', 'library', 'island', 'kitchen', 'garage'],
    'nature': ['forest', 'river', 'mountain', 'garden', 'flower'],
    'music': ['piano', 'flute', 'guitar', 'drum', 'dance'],
  },
  'hard': {
    'complex': [
      'awkward', 'schnitzel', 'liaison', 'opaque', 'plaque', 'czar', 'sphinx', 'rhythm',
      'voodoo', 'gnome', 'queue', 'dilemma', 'macabre', 'fuchsia', 'bizarre', 'haphazard',
      'zephyr', 'gazebo', 'nostalgia', 'vortex', 'eclipse', 'xylophone'
    ],
    'emotions/abstract': ['phantom', 'mirage', 'flabbergast', 'grumble', 'plummet', 'wrinkle'],
    'action': ['fiddle', 'topple', 'hazard', 'jinx', 'bequeath', 'fathom'],
  }
};


final hangmanArt = {
  0: [
    "  ",
    "  ",
    "  ",
  ],
  1: [
    " Օ ",
    "   ",
    "  ",
  ],
  2: [
    " Օ ",
    " | ",
    "   ",
  ],
  3: [
    " Օ ",
    "/| ",
    "   ",
  ],
  4: [
    " Օ ",
    "/|\\ ",
    "    ",
  ],
  5: [
    " Օ ",
    "/|\\ ",
    "/   ",
  ],
  6: [
    " Օ ",
    "/|\\ ",
    "/ \\   ",
  ]
};         


