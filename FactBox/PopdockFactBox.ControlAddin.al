controladdin PopdockFactBox
{
    RequestedHeight = 600;
    MaximumHeight = 600;
    VerticalStretch = false;
    VerticalShrink = false;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Scripts = 'FactBox/Functions.js';

    event ControlReady()
    procedure CreateSidebar(url: Text);
}