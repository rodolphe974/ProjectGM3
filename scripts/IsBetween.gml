///IsBetween(Reference Value, Bottom Value, Top Value)
Reference = argument0;
BottomValue = argument1;
TopValue = argument2;
Result = false;

if (Reference >= BottomValue and Reference <TopValue)
{
    Result = true;
};

return Result;
