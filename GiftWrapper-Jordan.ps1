#Create a function to wrap each gift.
function wrapAGift {
    param (
        [string] $gift
    )
    #Declare a variable for the gifts length
    $giftLength = $gift.Length

    $middle = "*** " + $gift + " ***"

    #Create a variable for the top and bottom of the present.
    $edges = "****" + ("*" * $giftLength) + "****"


#Outout the edges of the present and the present in the middle.
    Write-Output $edges
    Write-Output $middle
    Write-Output $edges


}

#Create a function that loops through an array and wrapps the contents individually.
function wrapAllGifts {
    param (
        [array] $arrayOfGifts
    )
    #Loop through the array of presents, for each present call the wrap function to wrap it.
    for($i =0; $i -lt $arrayOfGifts.Length; $i++){
        #Output a new line first so our presents are seperate.
        Write-Output ""

        wrapAGift($arrayOfGifts[$i])

    }
    
}

#Create an array of presents we need to wrap
$presentsToWrap = @("Socks", "Slippers", "Necklace", "Celebrations", "Xbox")

#Call the present wrapping function with our list of presents to wrap.
wrapAllGifts($presentsToWrap)