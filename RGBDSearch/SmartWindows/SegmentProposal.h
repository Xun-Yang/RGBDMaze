﻿#pragma once
//////////////////////////////////////////////////////////////////////////
// object segment proposal
// jiefeng©2014-08-07
//////////////////////////////////////////////////////////////////////////

#include "common.h"

class SegmentProposal
{
private:


public:
	SegmentProposal(void);

	bool SegmentDepth(const Mat& dmap);
};
