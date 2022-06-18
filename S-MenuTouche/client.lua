RegisterKeyMapping("+opentouche","ouvir le menu touche", "Keyboard", "F2")

RegisterCommand("+opentouche", function()
    openMenuTouche()
end)

function openMenuTouche()

    local menuTest = RageUI.CreateMenu(nil, GetPlayerName(PlayerId()))


    RageUI.Visible(menuTest, not RageUI.Visible(menuTest))

    while menuTest do

        Citizen.Wait(0)

        RageUI.IsVisible(menuTest,true,true,true,function()
            RageUI.Separator("↓Menu↓")
            RageUI.ButtonWithStyle("Menu Admin~r~", nil, {RightLabel = "~r~F10"}, true, function(Hovered, Actived, Selected)
                if Selected then
                end
            end)
            RageUI.ButtonWithStyle("Menu Interaction", nil, {RightLabel = "~r~F5"}, true, function(Hovered, Actived, Selected)
                if Selected then
                end
            end)
            RageUI.ButtonWithStyle("Boutique", nil, {RightLabel = "~r~F1"}, true, function(Hovered, Actived, Selected)
                if Selected then
                end
            end)
            RageUI.Separator("_________________")
            RageUI.Separator("↓Interactioin↓")
            RageUI.ButtonWithStyle("Lever les main", nil, {RightLabel = "~r~Y"}, true, function(Hovered, Actived, Selected)
                if Selected then
                end
            end)
            RageUI.ButtonWithStyle("Dormir / Se Reveiller", nil, {RightLabel = "~r~="}, true, function(Hovered, Actived, Selected)
                if Selected then
                end
            end)
            RageUI.ButtonWithStyle("S\'accroupire", nil, {RightLabel = "~r~CTRL"}, true, function(Hovered, Actived, Selected)
                if Selected then
                end
            end)
            RageUI.Separator("_________________")
            RageUI.Separator("↓Command F8↓")
            RageUI.ButtonWithStyle("cl_drawfps", nil, {RightLabel = "~r~True | False"}, true, function(Hovered, Actived, Selected)
                if Selected then
                end
            end)
            RageUI.ButtonWithStyle("resmon ", nil, {RightLabel = "~r~0 | 1"}, true, function(Hovered, Actived, Selected)
                if Selected then
                end
            end)
            RageUI.ButtonWithStyle("se_debug", nil, {RightLabel = "\"~r~True | False"}, true, function(Hovered, Actived, Selected)
                if Selected then
                end
            end)
            RageUI.Separator("_________________")





        end, function()
        end)

        if not RageUI.Visible(menuTest) then
            menuTest=RMenu:DeleteType("", true)
        end

    end

end
