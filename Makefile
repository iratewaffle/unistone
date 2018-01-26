# Makefile for unistone
# Still in progress...

UNI = unicon
UFLAGS = -C
OBJS = unistone.u game.u player.u minion.u card.u


#unistone: unistone.icn game.icn player.icn minion.icn card.icn
#	$(UNI) -o unistone unistone.icn game.icn player.icn minion.icn card.icn

unistone: $(OBJS) 
	$(UNI) -o unistone $(OBJS)

card.u: card.icn
	$(UNI) -c card.icn

minion.u: minion.icn
	$(UNI) -c minion.icn

player.u: player.icn
	$(UNI) -c player.icn

game.u: game.icn
	$(UNI) -c game.icn

unistone.u: unistone.icn
	$(UNI) -c unistone.icn

clean:
	rm unistone $(OBJS)
