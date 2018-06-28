#ifndef _TEST_APP_H
#define _TEST_APP_H

#include "dfcApp.h"


#define CTX_OVERWORLD	0
#define MAX_CTX			1

class CAppDragonWarrior : public CApp
{
public:
	CAppDragonWarrior();
	virtual ~CAppDragonWarrior(){};

	virtual void OnPostCreate(void);
};

extern CAppDragonWarrior *g_TheAppDragonWarrior;

#endif //_TEST_APP_H
