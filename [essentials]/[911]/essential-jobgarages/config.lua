Config = Config or {}

Config.fuel_script = 'cdn-fuel' --LegacyFuel

Config.MagicTouch = false

Config.VehicleWhiteList = {
     ['defaultPolice'] = {
          { label = 'polexplorer', model = 'polexplorer' },
          { label = 'polvictoria', model = 'polvictoria' },



          
     },
     ['heliPolice'] = {
          { label = 'Police Maverick', model = 'Polmav' }
     },
     ['gas_station'] = {
          { label = 'Adder', model = 'adder' },
          { label = 'Glendale', model = 'glendale' },
     },
     ['vagos_yard'] = {
          -- by using qb-core/shared/vehicles.lua
          allow_all = true,
          { label = 'Sheriff', model = 'Sheriff2' }, -- #TODO add support for additions 
     },
     ['emsvehicles'] = {
          { label = 'ambulance', model = 'ambulance' },    
     },
}

Config.Garages = {
     --Job Garage:
     ['mrpd'] = {
          label = 'Police Garage (mrpd)',
          type = 'job',
          job = { 'police' }, -- accpets just one job
          onDuty = true,
          spawnPoint = {
               vector4(445.92, -996.92, 24.96, 270.5),
               vector4(445.92, -994.25, 24.96, 270.33),
               vector4(446.08, -991.53, 24.96, 269.54),
               vector4(445.94, -994.25, 25.12, 270.9),
               vector4(445.73, -988.81, 25.12, 269.94),
               vector4(446.24, -986.16, 25.12, 269.11),
               -- flip
               vector4(437.0, -986.11, 25.12, 88.82),
               vector4(437.06, -988.91, 25.12, 89.17),
               vector4(437.16, -991.66, 25.12, 88.86),
               vector4(437.31, -994.24, 25.12, 89.62),
               vector4(437.1, -997.01, 25.12, 89.27),
               vector4(425.99, -976.17, 25.08, 90.6),
               vector4(425.76, -979.0, 25.08, 90.9),
               vector4(425.92, -981.54, 25.08, 90.12),
               vector4(425.89, -984.25, 25.08, 89.43),
               vector4(425.77, -988.98, 25.08, 90.47),
               vector4(425.68, -991.71, 25.08, 89.45),
               vector4(425.66, -994.37, 25.09, 89.49),
               vector4(425.77, -997.05, 25.09, 88.9)
          },
          zones = {
               vector2(423, -1000),
               vector2(450, -999),
               vector2(449, -983),
               vector2(428, -982),
               vector2(428, -973),
               vector2(423, -973)
          },
          minz = 24.66,
          maxz = 28.66,
          WhiteList = Config.VehicleWhiteList['defaultPolice'],
          garage_management = {
               -- access to garage management
               ['HSK32182'] = true,
               ['OIX50352'] = true,

          }
     },
     ['mrpd_heli_pad'] = {
          label = 'Police Heli Pad (mrpd)',
          type = 'job',
          job = { 'police' },
          spawnPoint = {
               vector4(449.22, -981.24, 43.69, 91.21),
          },
          zones = {
               vector2(459.4, -975.1),
               vector2(441.9, -974.7),
               vector2(442.1, -988.7),
               vector2(459.5, -989.1)
          },
          minz = 42.5,
          maxz = 50.95,
          WhiteList = Config.VehicleWhiteList['heliPolice'],
          garage_management = {
               -- access to garage management
               ['TXB57360'] = true,
               ['OIX50352'] = true,
          }
     },
     
     -- EMS GARAGE
     ['EMS Garage'] = {
          label = 'EMS Garage',
          type = 'job',
          job = { 'ambulance' },
          spawnPoint = {
               vector4(294.3766784668, -610.41888427734, 43.008972167969, 70.221939086914),
               vector4(296.34497070313, -607.79840087891, 43.204250335693, 69.050071716309),
               vector4(297.45907592773, -604.99243164063, 43.18542098999, 69.359634399414),
               vector4(298.23684692383, -602.3505859375, 43.154838562012, 68.761260986328)
          },
          zones = {
               vector2(291.95062255859, -612.64013671875),
               vector2(297.2956237793, -614.83508300781),
               vector2(298.60885620117, -612.32556152344),
               vector2(302.10229492188, -602.60833740234),
               vector2(292.76727294922, -598.90753173828),
               vector2(288.69912719727, -610.82702636719)
          },
          minZ=40.78,
          maxZ=44.78,
          WhiteList = Config.VehicleWhiteList['emsvehicles'],
          garage_management = {
               -- access to garage management
               ['TXB57360'] = true,
               ['OIX50352'] = true,
          }
     },
}

function Notification(source, msg, _type)
     TriggerClientEvent('QBCore:Notify', source, msg, _type)
end

CreateThread(function()
     for garage_name, garage in pairs(Config.Garages) do
          for key, value in pairs(garage.WhiteList) do
               if key ~= 'allow_all' then
                    Config.Garages[garage_name].WhiteList[key].hash = GetHashKey(value.model:lower())
               end
          end
     end
end)
