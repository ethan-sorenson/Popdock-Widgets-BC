pageextension 86006 "Popdock Customer Card" extends "Customer Card"
{
    layout
    {
        addafter(Invoicing)
        {
            Group("Popdock Equipment List")
            {
                usercontrol(PopdockFastTab; PopdockFastTab)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    var
        Url: Text;
    begin
        if GuiAllowed then begin
            //Initialize Favorite
            Url := 'https://widget-weu.popdock.com/embed/HvcnidxkBOxpvkZciMZVAg?theme=dynamics_bc&no=' + rec."No.";
            CurrPage.PopdockFastTab.CreateUrl(Url);
        end;
    end;
}