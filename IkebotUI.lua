SLASH_IkebotUI1 = '/ike';
local function handler(msg,editBox)
    if msg == 'bye' then
        print('Goodbye, World!')
    else
        IkebotUIForm:Show();
    end
end
SlashCmdList["IkebotUI"] = handler;

function IkebotUIFormEvent(argl)
    if(event == "VARIABLES_LOADED") then
        local count,label;
        if(IkebotUISavedVar == nil) then
            IkebotUISavedVar = {};
        end
        count = IkebotUISavedVar["count"];
        if(count == nil) then
            count = 0;
        end
        label = getglobal("IkebotUIForm".."CountLabel".."Label");
        label:SetText("This form has been loaded "..count.." time(s)");
        IkebotUISavedVar["count"] = count + 1;
    end

end            