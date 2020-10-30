page 86002 PopdockPurchFactBoxPart
{
    PageType = CardPart;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    SourceTable = "Purchase Line";

    layout
    {
        area(Content)
        {
            usercontrol(PopdockFactBox; PopdockFactBox)
            {
                ApplicationArea = All;

            }
        }
    }
    trigger OnAfterGetRecord()
    var
        Url: Text;
    begin
        //Initialize Factbox
        Url := 'https://widget-weu.popdock.com/embed/_E6DT1_6oUaLujJlTv7UUg?theme=dynamics_bc&no=' + rec."No.";
        CurrPage.PopdockFactBox.CreateSidebar(Url);
    end;
}

pageextension 86003 "Iframe Purchase Invoice" extends "Purchase Invoice"
{
    layout
    {
        addfirst(factboxes)
        {

            part(PopdockFactBox; PopdockPurchFactBoxPart)
            {
                ApplicationArea = all;
                Caption = 'Item Inventory';
                Provider = PurchLines;
                SubPageLink = "No." = FIELD("No.");
            }
        }
    }
}

