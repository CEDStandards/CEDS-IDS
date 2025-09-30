

CREATE FUNCTION [dbo].[fnSplit](@String varchar(MAX), @Delimiter char(1))       
returns @temptable TABLE (Item varchar(MAX), RowNumber int)       
as       
begin      
    declare @idx int       
    declare @slice varchar(8000)   
    declare @rn int = 1 -- row number that increments with each value in the delimited string

    select @idx = 1       
        if len(@String)<1 or @String is null  return       

    while @idx!= 0       
    begin       
        set @idx = charindex(@Delimiter,@String)       
        if @idx!=0       
            set @slice = left(@String,@idx - 1)   
        else       
            set @slice = @String       

        if(len(@slice)>0)  
            insert into @temptable(Item, RowNumber) values(@slice, @rn)       

        set @String = right(@String,len(@String) - @idx)       
        set @rn = @rn +1

        if len(@String) = 0 break       
    end   
return 
end;

