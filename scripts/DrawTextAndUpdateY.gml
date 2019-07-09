///DrawTextAndUpdateY("Text to draw")
TextToDraw = argument0;

draw_text (x,CurrentY,TextToDraw);
CurrentY = CurrentY + string_height(TextToDraw)+Margin;
