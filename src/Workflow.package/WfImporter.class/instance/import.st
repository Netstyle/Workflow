importing
import
	^ IDCurrentManager use: self idManager during:
		[self importData].