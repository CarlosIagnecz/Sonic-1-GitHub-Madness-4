SndA1_Lamppost_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SndA1_Lamppost_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cPSG1, SndA1_Lamppost_PSG1,	$00, $01

; PSG1 Data
SndA1_Lamppost_PSG1:
	dc.b	nG3, $05
	smpsModSet          $02, $01, $01, $F0
	dc.b	nG4, $30
	smpsStop

SndA1_Lamppost_Voices: