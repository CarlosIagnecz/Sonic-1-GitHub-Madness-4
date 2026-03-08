Jeopardy_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Jeopardy_Voices
	smpsHeaderChan      $01, $00
	smpsHeaderTempo     $01, $02

	smpsHeaderDAC       Jeopardy_DAC
;	smpsHeaderFM        Jeopardy_FM1,	$F4, $12
;	smpsHeaderFM        Jeopardy_FM2,	$00, $0B
;	smpsHeaderFM        Jeopardy_FM3,	$F4, $14
;	smpsHeaderFM        Jeopardy_FM4,	$F4, $08
;	smpsHeaderFM        Jeopardy_FM5,	$F4, $20
;	smpsHeaderPSG       Jeopardy_PSG1,	$D0, $01, $00, $00
;	smpsHeaderPSG       Jeopardy_PSG2,	$D0, $03, $00, $00
;	smpsHeaderPSG       Jeopardy_PSG3,	$00, $03, $00, fTone_04

Jeopardy_DAC:
	dc.b	dKick, $06, dKick, dSnare, $03, dKick, $09, $09, $03, dSnare, $06, dKick
	smpsLoop            $00, $06, Jeopardy_DAC
	dc.b	dSnare, $0C, dKick, $06, $06, $0C, $0C, $0C, $0C, dSnare, $03, $03, $06, $03, $03, $06
	smpsJump            Jeopardy_DAC

Jeopardy_Voices: