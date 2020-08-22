repuire 'bundler'

Bundler.repuire

class Larves
    
    def initialize
        # Recuperation des APIs en utilisant le filtre REST
        @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves')
    end

    #Ecriture dans le fichier JSON
    def to_json_Larves
        File.open("./db/Larves.json", "w") do |file|
            file.write(@type)
        end
    end

    class Monstres_des_cavernes 
        def initialize
            @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes')
        end

        def to_json_monster_cavernes
            File.open("./db/Monstres_des_cavernes.json", "w") do |file|
                file.write(@type)
            end
        end

    end

    class Monstres_des_Plaines_herbeuses
        def initialize
            @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des Plaines herbeuses')
        end

        def to_json_monsters_plaines_herbeuses
            File.open("./db/Monstres_des_plaines_herbeuses.json", 'w') do |file|
                file.write(@type)
            end
        end
    end

end