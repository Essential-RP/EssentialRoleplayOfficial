TLS.EUPUI.Helmets = { -- You can add more helmet setups here, I've added an example to show you how. **We will not provide support for this config**.
    ['NVG Goggle Setup'] = {
      Male = {  -- First number is the clothing item, second number is the texture.
        Helmet = {94, 1}, -- Helmet within the Hat, Helmet category.
        Accessory1 = {3, 1}, -- NVG, Visors, goggles within the glasses category.
        Accessory2 = {4, 1}, -- Headsets within the Earrings, Ear piece category.
        Mask = {54, 3}, -- Balaclava, Respirator within the Mask, Beard category.
        Patches = {0, 0} -- Patches within the Parachutes, Bags, Badges category.
      },
      Female = {
        Helmet = {94, 1},
        Accessory1 = {3, 1},
        Accessory2 = {4, 1},
        Mask = {54, 3},
        Patches = {0, 0}
      }
    },
}

TLS.EUPUI.Outfits = { -- You can add more departments here, I've added an example to show you how. **We will not provide support for this config**.
  ['Department Example'] = {
    Enable = false, -- Change the boolean to enable / disable this department.
    Max = 1, -- How many uniforms do you have in this department?
    [1] = { -- For the second outfit change to 2, third outfit to 3 etc...
      Name = 'Outfit Example',
      Male = { -- First number is the clothing item, second number is the texture.
        Hat = {0, 0}, -- Hat, Helmet.
        Glasses = {0, 0}, -- Glasses.
        Ear = {0, 0}, -- Earrings, Ear piece.
        Watch = {0, 0}, -- Watch.
        Mask = {0, 0}, -- Mask, Beard.
        Top = {0, 0}, -- Overshirt.
        UpperSkin = {0, 0}, -- Arms, Gloves.
        Decal = {0, 0}, -- Patches.
        UnderCoat = {0, 0}, -- Undershirt, Duty belt.
        Pants = {0, 0}, -- Pants.
        Shoes = {0, 0}, -- Shoes.
        Accessories = {0, 0}, -- Duty belt, Chains, Scarfs.
        Armor = {0, 0}, -- Armour, Bodycams.
        Parachute = {0, 0} -- Parachutes, Bags, Badges.
      },

      Female = {
        Hat = {0, 0},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
  },
  ['LSPD'] = {
    Enabled = true, -- Change the boolean to enable / disable this department.
    Max = 58, -- How many uniforms do you have in this department?
    [1] = {
      Name = 'Class A',
      Male = {
        Hat = {84, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {103, 1},
        UpperSkin = {87, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {83, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {94, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {4, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
    [2] = {
      Name = 'Class A w/Hi-Vis',
      Male = {
        Hat = {84, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {103, 1},
        UpperSkin = {87, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {11, 2},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {83, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {94, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {4, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {20, 2},
        Parachute = {32, 1}
      }
    },
    [3] = {
      Name = 'Class B',
      Male = {
        Hat = {84, 2},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {102, 1},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {83, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {93, 1},
        UpperSkin = {29, 1},
        Decal = {1, 1},
        UnderCoat = {4, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 1}
      }
    },
    [4] = {
      Name = 'Class B w/TrafficV',
      Male = {
        Hat = {84, 2},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {102, 1},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {11, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {83, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {93, 1},
        UpperSkin = {29, 1},
        Decal = {1, 1},
        UnderCoat = {4, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {20, 2},
        Parachute = {33, 1}
      }
    },
    [5] = {
      Name = 'SGT - Class A',
      Male = {
        Hat = {84, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {103, 2},
        UpperSkin = {87, 2},
        Decal = {13, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 1}
      },

      Female = {
        Hat = {83, 3},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {94, 2},
        UpperSkin = {24, 1},
        Decal = {11, 1},
        UnderCoat = {4, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 0}
      }
    },
    [6] = {
      Name = 'SGT - Class A w/TrafficVest',
      Male = {
        Hat = {84, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {122, 1},
        Mask = {122, 1},
        Top = {103, 2},
        UpperSkin = {87, 2},
        Decal = {13, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 1}
      },

      Female = {
        Hat = {83, 4},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {94, 2},
        UpperSkin = {24, 1},
        Decal = {11, 1},
        UnderCoat = {4, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {20, 2},
        Parachute = {36, 1}
      }
    },
    [7] = {
      Name = 'SGT - Class B',
      Male = {
        Hat = {84, 3},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {102, 2},
        UpperSkin = {86, 2},
        Decal = {16, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 1}
      },

      Female = {
        Hat = {83, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {93, 2},
        UpperSkin = {29, 1},
        Decal = {15, 1},
        UnderCoat = {4, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {3, 1},
        Armor = {1, 1},
        Parachute = {36, 1}
      }
    },
    [8] = {
      Name = 'SGT - Class B w/TrafficV',
      Male = {
        Hat = {84, 3},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {102, 2},
        UpperSkin = {86, 2},
        Decal = {16, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {11, 2},
        Parachute = {36, 1}
      },

      Female = {
        Hat = {83, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {93, 2},
        UpperSkin = {29, 1},
        Decal = {15, 1},
        UnderCoat = {4, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {3, 1},
        Armor = {20, 2},
        Parachute = {36, 1}
      }
    },
    [9] = {
      Name = 'Explorers - Class A',
      Male = {
        Hat = {84, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {103, 3},
        UpperSkin = {87, 2},
        Decal = {13, 2},
        UnderCoat = {88, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {37, 1}
      },

      Female = {
        Hat = {83, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {94, 3},
        UpperSkin = {24, 1},
        Decal = {11, 2},
        UnderCoat = {7, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {37, 1}
      }
    },
    [10] = {
      Name = 'Explorers - Class B',
      Male = {
        Hat = {84, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {102, 3},
        UpperSkin = {86, 2},
        Decal = {16, 2},
        UnderCoat = {88, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {37, 1}
      },

      Female = {
        Hat = {83, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {93, 3},
        UpperSkin = {29, 1},
        Decal = {15, 2},
        UnderCoat = {7, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {37, 1}
      }
    },

    [11] = {
      Name = 'T-Shirt - Blue',
      Male = {
        Hat = {84, 2},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {109, 1},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {3, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {84, 6},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 2},
        Mask = {1, 1},
        Top = {100, 1},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {4, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      }
    },
    [12] = {
      Name = 'T-Shirt - Blue w/TrafficV',
      Male = {
        Hat = {84, 3},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {109, 1},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {3, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {83, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 2},
        Mask = {1, 1},
        Top = {100, 1},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {4, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {20, 2},
        Parachute = {75, 1}
      }
    },
    [13] = {
      Name = 'T-Shirt - Grey',
      Male = {
        Hat = {84, 2},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {109, 1},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {3, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {83, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 2},
        Mask = {1, 1},
        Top = {100, 2},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {4, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      }
    },
    [14] = {
      Name = 'T-Shirt - Grey w/TrafficV',
      Male = {
        Hat = {84, 3},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {109, 2},
        Top = {109, 1},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {3, 1},
        Armor = {11, 2},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {83, 4},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 2},
        Mask = {1, 1},
        Top = {100, 2},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {4, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {20, 2},
        Parachute = {75, 1}
      }
    },
    [15] = {
      Name = 'Polo - Blue',
      Male = {
        Hat = {84, 2},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {3, 1},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {11, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {83, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 2},
        Mask = {1, 1},
        Top = {15, 1},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {4, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      }
    },
    [16] = {
      Name = 'Polo - Blue w/TrafficV',
      Male = {
        Hat = {84, 2},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {3, 1},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {11, 2},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [17] = {
      Name = 'Polo - Grey',
      Male = {
        Hat = {84, 2},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {3, 2},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {83, 3},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 2},
        Mask = {1, 1},
        Top = {15, 2},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {4, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      }
    },
    [18] = {
      Name = 'Polo - Grey w/LBV',
      Male = {
        Hat = {84, 2},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {3, 2},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {8, 3},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [19] = {
      Name = 'Polo - Grey w/TrafficV',
      Male = {
        Hat = {84, 2},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {3, 2},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {11, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [20] = {
      Name = 'Long Sleeve Shirt',
      Male = {
        Hat = {84, 2},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {93, 1},
        UpperSkin = {92, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {3, 1},
        Armor = {11, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [21] = {
      Name = 'Long Sleeve Shirt w/LBV',
      Male = {
        Hat = {84, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {93, 1},
        UpperSkin = {92, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {3, 1},
        Armor = {8, 3},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [22] = {
      Name = 'Jacket',
      Male = {
        Hat = {84, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {82, 2},
        UpperSkin = {91, 2},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {3, 1},
        Armor = {1, 1},
        Parachute = {34, 1}
      },

      Female = {
        Hat = {83, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {75, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      }
    },
    [23] = {
      Name = 'SGT - Jacket',
      Male = {
        Hat = {84, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {82, 1},
        UpperSkin = {91, 2},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {3, 1},
        Armor = {1, 1},
        Parachute = {34, 2}
      },

      Female = {
        Hat = {83, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {75, 2},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      }
    },
    [23] = {
      Name = 'Cold Wear Jacket w/TrafficV',
      Male = {
        Hat = {3, 4},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {155, 1},
        UpperSkin = {91, 2},
        Decal = {1, 1},
        UnderCoat = {67, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {3, 1},
        Armor = {1, 1},
        Parachute = {34, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [24] = {
      Name = 'Fleece All Blue',
      Male = {
        Hat = {3, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {108, 1},
        UpperSkin = {91, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [25] = {
      Name = 'Fleece Jacket',
      Male = {
        Hat = {3, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {108, 2},
        UpperSkin = {91, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [26] = {
      Name = 'K-9 - Class A',
      Male = {
        Hat = {84, 5},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {103, 4},
        UpperSkin = {87, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {83, 5},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {94, 4},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {3, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
    [27] = {
      Name = 'K-9 Class A w/LBV',
      Male = {
        Hat = {84, 6},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {103, 4},
        UpperSkin = {87, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {8, 2},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [28] = {
      Name = 'K-9 - Class B',
      Male = {
        Hat = {84, 5},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {102, 4},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {83, 6},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {93, 4},
        UpperSkin = {29, 1},
        Decal = {1, 1},
        UnderCoat = {3, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 1}
      }
    },
    [29] = {
      Name = 'K-9 - Class B w/LBV',
      Male = {
        Hat = {84, 5},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {102, 4},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {8, 2},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [30] = {
      Name = 'K-9 - T-Shirt',
      Male = {
        Hat = {84, 5},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {109, 3},
        UpperSkin = {106, 1},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {83, 6},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 2},
        Mask = {1, 1},
        Top = {100, 3},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {3, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      }
    },
    [31] = {
      Name = 'K-9 - T-Shirt w/LBV',
      Male = {
        Hat = {84, 6},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {109, 3},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {8, 2},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [32] = {
      Name = 'K-9 - Long Sleeve Shirt w/LBV',
      Male = {
        Hat = {84, 5},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {93, 2},
        UpperSkin = {89, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {8, 2},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [33] = {
      Name = 'K-9 - Fleece Jacket',
      Male = {
        Hat = {84, 6},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {108, 3},
        UpperSkin = {91, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {8, 2},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [34] = {
      Name = 'Bicycle Polo',
      Male = {
        Hat = {50, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {3, 3},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {89, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {48, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 2},
        Mask = {1, 1},
        Top = {15, 3},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {3, 1},
        Pants = {92, 1},
        Shoes = {5, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      }
    },
    [35] = {
      Name = 'Motorcycle Unit - Class A Blue',
      Male = {
        Hat = {49, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {161, 1},
        UpperSkin = {153, 3},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {33, 1},
        Shoes = {34, 1},
        Accessories = {3, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {49, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {158, 2},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {4, 1},
        Pants = {32, 2},
        Shoes = {10, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
    [36] = {
      Name = 'Motorcycle Unit - Class A Grey',
      Male = {
        Hat = {49, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {161, 1},
        UpperSkin = {153, 3},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {33, 4},
        Shoes = {34, 1},
        Accessories = {3, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {49, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {158, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {4, 1},
        Pants = {32, 2},
        Shoes = {10, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
    [37] = {
      Name = 'Motorcycle Unit - Class B Blue',
      Male = {
        Hat = {49, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {160, 1},
        UpperSkin = {152, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {33, 4},
        Shoes = {34, 1},
        Accessories = {3, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {49, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {157, 2},
        UpperSkin = {29, 1},
        Decal = {1, 1},
        UnderCoat = {4, 1},
        Pants = {32, 2},
        Shoes = {10, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
    [38] = {
      Name = 'Motorcycle Unit - Class B Grey',
      Male = {
        Hat = {49, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {160, 1},
        UpperSkin = {152, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {33, 4},
        Shoes = {34, 1},
        Accessories = {3, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {49, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {157, 1},
        UpperSkin = {29, 1},
        Decal = {1, 1},
        UnderCoat = {4, 1},
        Pants = {32, 2},
        Shoes = {10, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
    [39] = {
      Name = 'LSPD | Pilot Uniform',
      Male = {
        Hat = {80, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {66, 2},
        UpperSkin = {97, 1},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {39, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {49, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [40] = {
      Name = 'GIU - T-Shirt',
      Male = {
        Hat = {8, 2},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {109, 4},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {88, 2},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {8, 8},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 2},
        Mask = {1, 1},
        Top = {100, 5},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {3, 1},
        Pants = {55, 2},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      }
    },
    [41] = {
      Name = 'GIU - Long Sleeve Shirt',
      Male = {
        Hat = {8, 2},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 1},
        Mask = {122, 1},
        Top = {93, 4},
        UpperSkin = {89, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [42] = {
      Name = 'GIU - Hoodie',
      Male = {
        Hat = {8, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 1},
        Mask = {122, 1},
        Top = {96, 1},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      },

      Female = {
        Hat = {8, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {87, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {55, 2},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
    [43] = {
      Name = 'GIU - Hoodie 2',
      Male = {
        Hat = {85, 3},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {96, 2},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      },

      Female = {
        Hat = {8, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {87, 2},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {55, 2},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
    [44] = {
      Name = 'GIU - Fleece Jacket',
      Male = {
        Hat = {8, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {108, 5},
        UpperSkin = {87, 2},
        Decal = {1, 1},
        UnderCoat = {88, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [45] = {
      Name = 'CID - T-Shirt',
      Male = {
        Hat = {85, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {109, 5},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {88, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {84, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 2},
        Mask = {1, 1},
        Top = {100, 4},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {7, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      }
    },
    [46] = {
      Name = 'CID - Hoodie',
      Male = {
        Hat = {85, 2},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {96, 3},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      },

      Female = {
        Hat = {84, 2},
        Glasses = {0, 0},
        Ear = {0, 0,
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {87, 3},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
    [47] = {
      Name = 'CID - Fleece Jacket',
      Male = {
        Hat = {8, 4},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {108, 4},
        UpperSkin = {87, 2},
        Decal = {1, 1},
        UnderCoat = {88, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [48] = {
      Name = 'CID - Jacket',
      Male = {
        Hat = {85, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {82, 3},
        UpperSkin = {91, 2},
        Decal = {1, 1},
        UnderCoat = {13, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = 9, 1},
        Armor = {1, 1},
        Parachute = {34, 1}
      },

      Female = {
        Hat = {84, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {1, 1},
        Top = {75, 3},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {4, 1},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      }
    },
    [49] = {
      Name = 'CID - Long Sleeve Shirt',
      Male = {
        Hat = {8, 4},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {93, 3},
        UpperSkin = {89, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [50] = {
      Name = 'SWAT - Combat Shirt',
      Male = {
        Hat = {2, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {111, 1},
        UpperSkin = {89, 2},
        Decal = {1, 1},
        UnderCoat = {102, 1},
        Pants = {47, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute =	 {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [51] = {
      Name = 'SWAT - Combat Shirt w/JPC',
      Male = {
        Hat = {2, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {111, 1},
        UpperSkin = {89, 2},
        Decal = {1, 1},
        UnderCoat = {102, 1},
        Pants = {47, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {3, 5},
        Parachute =	 {2, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [52] = {
      Name = 'SWAT - Polo',
      Male = {
        Hat = {82, 5},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {3, 4},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {88, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute =	 {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [53] = {
      Name = 'SWAT - Polo Instructor',
      Male = {
        Hat = {85, 5},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {3, 5},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {5, 2},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute =	 {34, 2}
      },

      Female = {
        Hat = {84, 5},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 2},
        Mask = {1, 1},
        Top = {15, 4},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {14, 1},
        Pants = {1, 11},
        Shoes = {50, 1},
        Accessories = {7, 1},
        Armor = {1, 1},
        Parachute = {34, 2}
      }
    },
    [54] = {
      Name = 'SWAT - Long Sleeve',
      Male = {
        Hat = {8, 8},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {93, 5},
        UpperSkin = {89, 2},
        Decal = {1, 1},
        UnderCoat = {102, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute =	 {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [55] = {
      Name = 'SWAT - Long Sleeved Shirt w/JPC',
      Male = {
        Hat = {3, 3},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {93, 1},
        Top = {93, 5},
        UpperSkin = {89, 2},
        Decal = {1, 1},
        UnderCoat = {102, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {3, 5},
        Parachute =	 {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [56] = {
      Name = 'SWAT - T-Shirt',
      Male = {
        Hat = {85, 5},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {109, 6},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {88, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute =	 {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [57] = {
      Name = 'SWAT - T-Shirt w/NegoVest',
      Male = {
        Hat = {85, 5},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {109, 6},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {88, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {3, 3},
        Parachute =	 {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },

    [58] = {
      Name = 'K-9 - Long Sleeve Shirt w/LBV',
      Male = {
        Hat = {84, 5},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {93, 2},
        UpperSkin = {89, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {8, 2},
        Parachute =	 {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    }
  },
  ['LSPA'] = {
    Enabled = true, -- Change the boolean to enable / disable this department.
    Max = 63, -- How many uniforms do you have in this department?
    [1] = {
      Name = 'Class A',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {116, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {107, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
    [2] = {
      Name = 'Class A w/ TBL Badge',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {116, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {107, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 1}
      }
    },
    [3] = {
      Name = 'Class A w/BCA Badge',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {116, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 2}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {107, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 2}
      }
    },
    [4] = {
      Name = 'Class A w/PatrolVest',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {116, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {18, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {107, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {21, 1},
        Parachute = {32, 1}
      }
    },
    [5] = {
      Name = 'Class A w/LifeVest',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {116, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {12, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {107, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {11, 1},
        Parachute = {32, 1}
      }
    },
    [6] = {
      Name = 'Class A w/TowingTrafficVest',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {116, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {11, 3},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {107, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {20, 4},
        Parachute = {32, 1}
      }
    },
    [7] = {
      Name = 'Class B',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {97, 1},
        UpperSkin = {93, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {88, 1},
        UpperSkin = {29, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
    [8] = {
      Name = 'Class B w/TBL Badge',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 0},
        Mask = {122, 1},
        Top = {97, 1},
        UpperSkin = {93, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 1}
      },
      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {88, 1},
        UpperSkin = {29, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 1}
      }
    },
    [9] = {
      Name = 'Class B w/BCA Badge',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 0},
        Mask = {122, 1},
        Top = {97, 1},
        UpperSkin = {93, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 2}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {88, 1},
        UpperSkin = {29, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 2}
      }
    },
    [10] = {
      Name = 'Class B w/PatrolVest',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 0},
        Mask = {122, 1},
        Top = {97, 1},
        UpperSkin = {93, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {18, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {88, 1},
        UpperSkin = {29, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {21, 1},
        Parachute = {32, 1}
      }
    },
    [11] = {
      Name = 'Class B w/LifeVest',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 0},
        Mask = {122, 1},
        Top = {97, 1},
        UpperSkin = {93, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {12, 1},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {88, 1},
        UpperSkin = {29, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {11, 1},
        Parachute = {32, 1}
      }
    },
    [12] = {
      Name = 'Class B w/TowingTrafficVest',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 0},
        Mask = {122, 1},
        Top = {97, 1},
        UpperSkin = {93, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {11, 3},
        Parachute = {32, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {88, 1},
        UpperSkin = {29, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {20, 4},
        Parachute = {32, 1}
      }
    },
    [13] = {
      Name = 'T-Shirt',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 0},
        Mask = {122, 1},
        Top = {109, 7},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {100, 7},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      }
    },
    [14] = {
      Name = 'T-Shirt w/PatrolVest',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 0},
        Mask = {122, 1},
        Top = {109, 7},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {21, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {100, 7},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      }
    },
    [15] = {
      Name = 'T-Shirt w/LifeVest',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 0},
        Mask = {122, 1},
        Top = {109, 7},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {12, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {100, 7},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {11, 1},
        Parachute = {75, 1}
      }
    },
    [16] = {
      Name = 'T-Shirt w/TowingTrafficVest',
      Male = {
        Hat = {85, 7},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {21, 0},
        Mask = {122, 1},
        Top = {109, 7},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {11, 3},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {100, 7},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {20, 4},
        Parachute = {75, 1}
      }
    },
    [17] = {
      Name = 'Cold-Gear Jacket',
      Male = {
        Hat = {3, 1},
        Glasses = {1, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {93, 1},
        Top = {94, 1},
        UpperSkin = {89, 2},
        Decal = {1, 1},
        UnderCoat = {107, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
    [18] = {
      Name = 'RainCoat',
      Male = {
        Hat = {85, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {8, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {36, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {8, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
    [19] = {
      Name = 'RainCoat Hood UP',
      Male = {
        Hat = {85, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {9, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {36, 1}
      },

      Female = {
        Hat = {84, 7},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {9, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
    [20] = {
      Name = 'Formal Uniform',
      Male = {
        Hat = {0, 0},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {37, 1},
        UpperSkin = {78, 1},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      },

      Female = {
        Hat = {0, 0},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {22, 1},
        UpperSkin = {89, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {4, 1},
        Shoes = {87, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      }
    },
    [21] = {
      Name = 'SGT - Class A',
      Male = {
        Hat = {98, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {51, 2},
        UpperSkin = {94, 2},
        Decal = {12, 3},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 1}
      },

      Female = {
        Hat = {97, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {44, 2},
        UpperSkin = {24, 1},
        Decal = {11, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 1}
      }
    },
    [22] = {
      Name = 'SGT - Class A w/TBL Badge',
      Male = {
        Hat = {98, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {51, 2},
        UpperSkin = {94, 2},
        Decal = {12, 3},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 2}
      },

      Female = {
        Hat = {97, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {44, 2},
        UpperSkin = {24, 1},
        Decal = {11, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 2}
      }
    },
   [23] = {
      Name = 'SGT - Class B',
      Male = {
        Hat = {98, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 0},
        Mask = {122, 1},
        Top = {50, 2},
        UpperSkin = {93, 2},
        Decal = {16, 3},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 1}
  },

      Female = {
        Hat = {97, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {43, 2},
        UpperSkin = {21, 1},
        Decal = {15, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {21, 1},
        Parachute = {36, 1}
      }
    },
   [24] = {
      Name = 'SGT - Class B w/TBL Badge',
      Male = {
        Hat = {98, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 0},
        Mask = {122, 1},
        Top = {50, 2},
        UpperSkin = {93, 2},
        Decal = {16, 3},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 2}
  },

      Female = {
        Hat = {97, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {43, 2},
        UpperSkin = {21, 1},
        Decal = {15, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {21, 1},
        Parachute = {33, 2}
      }
    },
   [25] = {
      Name = 'SGT - Class B w/Patrol Vest',
      Male = {
        Hat = {98, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 0},
        Mask = {122, 1},
        Top = {50, 2},
        UpperSkin = {93, 2},
        Decal = {16, 3},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {18, 1},
        Parachute = {36, 1}
  },

      Female = {
        Hat = {97, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {43, 2},
        UpperSkin = {21, 1},
        Decal = {15, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {21, 1},
        Parachute = {33, 2}
      }
    },
   [26] = {
      Name = 'SGT - RainCoat',
      Male = {
        Hat = {98, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 0},
        Mask = {122, 1},
        Top = {8, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 1}
  },

      Female = {
        Hat = {97, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {8, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {21, 1},
        Parachute = {32, 1}
      }
    },
    [27] = {
      Name = 'SGT - Formal Uniform',
      Male = {
        Hat = {98, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {37, 2},
        UpperSkin = {78, 1},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      },

      Female = {
        Hat = {97, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {22, 2},
        UpperSkin = {89, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {4, 1},
        Shoes = {87, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      }
    },
   [28] = {
      Name = 'LT - Class A',
      Male = {
        Hat = {98, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {51, 3},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 2}
  },

      Female = {
        Hat = {97, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {44, 3},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 2}
      }
    },
   [29] = {
      Name = 'LT - Class A w/TBL Badge',
      Male = {
        Hat = {98, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {51, 3},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 3}
  },

      Female = {
        Hat = {97, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {44, 3},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 3}
      }
    },
   [30] = {
      Name = 'LT - Class B',
      Male = {
        Hat = {98, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {50, 3},
        UpperSkin = {93, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 2}
  },

      Female = {
        Hat = {97, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {43, 3},
        UpperSkin = {21, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 2}
      }
    },
   [31] = {
      Name = 'LT - Class B w/TBL Badge',
      Male = {
        Hat = {98, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {50, 3},
        UpperSkin = {93, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 3}
  },

      Female = {
        Hat = {97, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {43, 3},
        UpperSkin = {21, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 3}
      }
    },
   [32] = {
      Name = 'LT - RainCoat',
      Male = {
        Hat = {98, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 0},
        Mask = {122, 1},
        Top = {8, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 1}
  },

      Female = {
        Hat = {97, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {8, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {21, 1},
        Parachute = {32, 1}
      }
    },
    [33] = {
      Name = 'LT - Formal Uniform',
      Male = {
        Hat = {98, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {37, 3},
        UpperSkin = {78, 1},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      },

      Female = {
        Hat = {97, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {22, 3},
        UpperSkin = {89, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {4, 1},
        Shoes = {87, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      }
    },
   [34] = {
      Name = 'CPT - Class A',
      Male = {
        Hat = {98, 3},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {51, 4},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 3}
  },

      Female = {
        Hat = {97, 3},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {44, 4},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 3}
      }
    },
   [35] = {
      Name = 'CPT - Class A w/TBL Badge',
      Male = {
        Hat = {98, 3},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {51, 4},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 4}
  },

      Female = {
        Hat = {97, 3},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {44, 4},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 4}
      }
    },
   [36] = {
      Name = 'CPT - Class B',
      Male = {
        Hat = {98, 3},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {50, 5},
        UpperSkin = {93, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 3}
  },

      Female = {
        Hat = {97, 3},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {43, 5},
        UpperSkin = {21, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 3}
      }
    },
   [37] = {
      Name = 'CPT - Class B w/TBL Badge',
      Male = {
        Hat = {98, 3},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {50, 5},
        UpperSkin = {93, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 4}
  },

      Female = {
        Hat = {97, 3},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {43, 5},
        UpperSkin = {21, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 4}
      }
    },
   [38] = {
      Name = 'CPT - RainCoat',
      Male = {
        Hat = {98, 3},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {8, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {36, 1}
  },

      Female = {
        Hat = {97, 3},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {8, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {21, 1},
        Parachute = {32, 1}
      }
    },
    [39] = {
      Name = 'CPT - Formal Uniform',
      Male = {
        Hat = {98, 3},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {37, 4},
        UpperSkin = {78, 1},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      },

      Female = {
        Hat = {97, 3},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {22, 4},
        UpperSkin = {89, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {4, 1},
        Shoes = {87, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      }
    },
   [40] = {
      Name = 'EODK9 - Class A',
      Male = {
        Hat = {85, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {51, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
  },

      Female = {
        Hat = {84, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {44, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 2},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
   [41] = {
      Name = 'EODK9 - Class A w/TBL Badge',
      Male = {
        Hat = {85, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {51, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {33, 1}
  },

      Female = {
        Hat = {84, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {44, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 2},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 1}
      }
    },
   [42] = {
      Name = 'EODK9 - Class A w/BCA Badge',
      Male = {
        Hat = {85, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {51, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {32, 2}
  },

      Female = {
        Hat = {84, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {44, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 2},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 2}
      }
    },
   [43] = {
      Name = 'EODK9 - Class A w/Vest',
      Male = {
        Hat = {85, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {51, 1},
        UpperSkin = {94, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {23, 2},
        Parachute = {32, 1}
  },

      Female = {
        Hat = {84, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {44, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 2},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {3, 2},
        Parachute = {32, 2}
      }
    },
   [44] = {
      Name = 'EODK9 - Class B',
      Male = {
        Hat = {85, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {50, 1},
        UpperSkin = {93, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
  },

      Female = {
        Hat = {84, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {43, 1},
        UpperSkin = {21, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 2},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 1}
      }
    },
   [45] = {
      Name = 'EODK9 - Class B w/TBL Badge',
      Male = {
        Hat = {85, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {50, 1},
        UpperSkin = {93, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {33, 1}
  },

      Female = {
        Hat = {84, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {43, 1},
        UpperSkin = {21, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 2},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {33, 1}
      }
    },
   [46] = {
      Name = 'EODK9 - Class B w/BCA Badge',
      Male = {
        Hat = {85, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {50, 1},
        UpperSkin = {93, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {32, 2}
  },

      Female = {
        Hat = {84, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {43, 1},
        UpperSkin = {21, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 2},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {32, 2}
      }
    },
   [47] = {
      Name = 'EODK9 - Class B w/Vest',
      Male = {
        Hat = {85, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {50, 1},
        UpperSkin = {93, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {23, 2},
        Parachute = {32, 1}
  },

      Female = {
        Hat = {84, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {43, 1},
        UpperSkin = {21, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 2},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {3, 2},
        Parachute = {32, 1}
      }
    },
   [48] = {
      Name = 'EODK9 - T-Shirt',
      Male = {
        Hat = {85, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {109, 9},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
  },

      Female = {
        Hat = {84, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {100, 9},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 2},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      }
    },
   [49] = {
      Name = 'EODK9 - T-Shirt w/Vest',
      Male = {
        Hat = {85, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {109, 9},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {23, 2},
        Parachute = {75, 1}
  },

      Female = {
        Hat = {84, 10},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {100, 9},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 2},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {3, 2},
        Parachute = {75, 1}
      }
    },
    [50] = {
      Name = 'EODK9 - Formal Uniform',
      Male = {
        Hat = {0, 0},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {37, 6},
        UpperSkin = {78, 1},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {25, 1},
        Shoes = {52, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      },

      Female = {
        Hat = {0, 0},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {22, 6},
        UpperSkin = {89, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {4, 1},
        Shoes = {87, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      }
    },
   [51] = {
      Name = 'CP - T-Shirt',
      Male = {
        Hat = {85, 8},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {109, 8},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
  },

      Female = {
        Hat = {84, 8},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {100, 8},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      }
    },
   [52] = {
      Name = 'CP - T-Shirt w/Vest',
      Male = {
        Hat = {85, 8},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {109, 8},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {23, 1},
        Parachute = {75, 1}
  },

      Female = {
        Hat = {84, 8},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {100, 8},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {2, 1},
        Armor = {3, 1},
        Parachute = {75, 1}
      }
    },
   [53] = {
      Name = 'Scuba Team - Polo',
      Male = {
        Hat = {85, 9},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {3, 6},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {53, 1},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
  },

      Female = {
        Hat = {84, 9},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {15, 5},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {31, 1},
        Pants = {55, 1},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 1}
      }
    },
   [54] = {
      Name = 'Scuba Team - Diving Suit',
      Male = {
        Hat = {0, 0},
        Glasses = {17, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {124, 1},
        Top = {153, 1},
        UpperSkin = {167, 2},
        Decal = {1, 1},
        UnderCoat = {80, 1},
        Pants = {69, 1},
        Shoes = {48, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
  },

      Female = {
        Hat = {0, 0},
        Glasses = {17, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {124, 1},
        Top = {150, 1},
        UpperSkin = {208, 2},
        Decal = {1, 1},
        UnderCoat = {83, 1},
        Pants = {71, 1},
        Shoes = {49, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      }
    },
   [55] = {
      Name = 'Scuba Team - Plain Diving Suit',
      Male = {
        Hat = {0, 0},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {124, 1},
        Top = {153, 1},
        UpperSkin = {167, 2},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {69, 1},
        Shoes = {47, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
  },

      Female = {
        Hat = {0, 0},
        Glasses = {17, 1},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {124, 1},
        Top = {150, 1},
        UpperSkin = {208, 2},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {71, 1},
        Shoes = {48, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      }
    },
   [56] = {
      Name = 'Rescue Pilot Overall',
      Male = {
        Hat = {80, 2},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {66, 2},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {39, 2},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
  },

      Female = {
        Hat = {79, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {59, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {39, 1},
        Shoes = {53, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      }
    },
   [57] = {
      Name = 'Rescue Pilot Overall - Visor UP',
      Male = {
        Hat = {79, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {66, 2},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {39, 2},
        Shoes = {52, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
  },

      Female = {
        Hat = {78, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {59, 1},
        UpperSkin = {24, 1},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {39, 1},
        Shoes = {53, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      }
    },
   [58] = {
      Name = 'Bomb Squad - Polo',
      Male = {
        Hat = {29, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {21, 1},
        Mask = {122, 1},
        Top = {3, 7},
        UpperSkin = {86, 2},
        Decal = {1, 1},
        UnderCoat = {132, 1},
        Pants = {53, 2},
        Shoes = {52, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {34, 2}
  },

      Female = {
        Hat = {29, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {7, 3},
        Mask = {122, 1},
        Top = {15, 6},
        UpperSkin = {32, 1},
        Decal = {1, 1},
        UnderCoat = {8, 1},
        Pants = {55, 2},
        Shoes = {53, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {75, 2}
      }
    },
   [59] = {
      Name = 'Bomb Squad - Juggernaut',
      Male = {
        Hat = {90, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {54, 1},
        Top = {187, 1},
        UpperSkin = {167, 1},
        Decal = {1, 1},
        UnderCoat = {98, 1},
        Pants = {85, 1},
        Shoes = {34, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
  },

      Female = {
        Hat = {89, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {53, 1},
        Top = {189, 1},
        UpperSkin = {208, 1},
        Decal = {1, 1},
        UnderCoat = {106, 1},
        Pants = {87, 1},
        Shoes = {51, 1},
        Accessories = {9, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      }
    },
    [60] = {
      Name = 'Bomb Squad - Formal Uniform',
      Male = {
        Hat = {29, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {37, 5},
        UpperSkin = {78, 1},
        Decal = {1, 1},
        UnderCoat = {16, 1},
        Pants = {25, 2},
        Shoes = {52, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      },

      Female = {
        Hat = {29, 1},
        Glasses = {0, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {122, 1},
        Top = {22, 5},
        UpperSkin = {89, 1},
        Decal = {1, 1},
        UnderCoat = {15, 1},
        Pants = {4, 1},
        Shoes = {87, 1},
        Accessories = {1, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
      }
    },
   [61] = {
      Name = 'QRT Hoodie',
      Male = {
        Hat = {33, 1},
        Glasses = {12, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {53, 1},
        Top = {10, 1},
        UpperSkin = {153, 2},
        Decal = {1, 1},
        UnderCoat = {38, 1},
        Pants = {53, 1},
        Shoes = {39, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
  },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
   [62] = {
      Name = 'QRT Hoodie w/TacVest',
      Male = {
        Hat = {33, 1},
        Glasses = {12, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {53, 1},
        Top = {10, 1},
        UpperSkin = {153, 2},
        Decal = {1, 1},
        UnderCoat = {38, 1},
        Pants = {53, 1},
        Shoes = {39, 1},
        Accessories = {2, 1},
        Armor = {20, 1},
        Parachute = {1, 1}
  },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    },
   [63] = {
      Name = 'QRT Hoodie w/TacVest - NVG',
      Male = {
        Hat = {32, 1},
        Glasses = {12, 0},
        Ear = {0, 0},
        Watch = {0, 0},
        Mask = {53, 1},
        Top = {10, 1},
        UpperSkin = {153, 2},
        Decal = {1, 1},
        UnderCoat = {38, 1},
        Pants = {53, 1},
        Shoes = {39, 1},
        Accessories = {2, 1},
        Armor = {1, 1},
        Parachute = {1, 1}
  },

      Female = {
        Hat = {1, 1},
        Glasses = {1, 1},
        Ear = {1, 1},
        Watch = {1, 1},
        Mask = {0, 0},
        Top = {0, 0},
        UpperSkin = {0, 0},
        Decal = {0, 0},
        UnderCoat = {0, 0},
        Pants = {0, 0},
        Shoes = {0, 0},
        Accessories = {0, 0},
        Armor = {0, 0},
        Parachute = {0, 0}
      }
    }
  }
}