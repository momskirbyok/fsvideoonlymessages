%hook CKUIBehavior
- (BOOL)canShowContactPhotosInConversationList{
	return TRUE;
}



- (BOOL)playsInlineVideo{
	return FALSE;
}

%end

%hook CKUIBehaviorPad
- (BOOL)canShowContactPhotosInConversationList{
	return TRUE;
}
%end

%hook CKUIBehaviorNano
- (BOOL)shouldShowContactPhotosInTranscript{
	return TRUE;
}
%end


%hook MPMoviePlayerController

- (BOOL)shouldAutoplay{
	return TRUE;
}

%end