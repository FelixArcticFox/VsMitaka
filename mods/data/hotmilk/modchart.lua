local modchart = 0

local swaying = 0

local camerabeat = 1


function start(song) -- do nothing

end

function update(elapsed)
    
if difficulty == 2 then 
   modchart = 1             
end
if difficulty == 1 then 
   modchart = 1             
end   
if difficulty == 0 then
   modchart = 0
end

if modchart == 1 and curStep > 304 then 
   swaying = 1
        end	
if modchart == 1 and curStep > 364 then 
   swaying = 0
        end
if modchart == 1 and curStep > 368 then 
   swaying = 1
        end	
if modchart == 1 and curStep > 431 then 
   swaying = 0
        end
if modchart == 1 and curStep > 496 then 
   swaying = 1
        end			
if modchart == 1 and curStep > 559 then 
   swaying = 0
        end		
if modchart == 1 and curStep > 816 then 
   swaying = 1
        end		
if modchart == 1 and curStep > 1072 then 
   swaying = 0
        end		
		if modchart == 1 and swaying == 1 then
          
		  local currentBeat = (songPos / 1000)*(bpm/10)
		   for i=0,7 do
			 setActorX(_G['defaultStrum'..i..'X'] + 34 * math.sin((currentBeat + i*0)), i)
			 setActorY(_G['defaultStrum'..i..'Y'] + 10 * math.cos((currentBeat + i*0.25)), i)
		
		  end	
			
			
		
    end

	    if modchart == 1 and swaying == 0 then
          
		  local currentBeat = (songPos / 1000)*(bpm/10)
		   for i=0,7 do
			 setActorX(_G['defaultStrum'..i..'X'],i)
			 setActorY(_G['defaultStrum'..i..'Y'] + 5 * math.cos((currentBeat + i*0.25)), i)
		
		  end	
			
			
		
    end
 
	
end

function beatHit(beat) 

if curStep > 0 then 
   camerabeat = 1
        end
if curStep > 304 then 
   camerabeat = 2
        end	
if curStep > 364 then 
   camerabeat = 1
        end
if curStep > 368 then 
   camerabeat = 2
        end	
if curStep > 431 then 
   camerabeat = 1
        end
if curStep > 496 then 
   camerabeat = 2
        end			
if curStep > 559 then 
   camerabeat = 1
        end		
if curStep > 816 then 
   camerabeat = 2
        end		
if curStep > 1072 then
   camerabeat = 1
        end



if camerabeat == 1 then
   setCamZoom(0.712)
                  

		end

if camerabeat == 2 then
   setCamZoom(0.78)
                  
		end

				  
				  
				  
				  
end

function stepHit(step) 
	

end


function playerTwoTurn()
    
end

function playerOneTurn()

end