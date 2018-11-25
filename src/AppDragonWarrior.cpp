#include "lib.h"
#include "libTypes.h"
#include "libMacros.h"
#include "AppDragonWarrior.h"

#include "CtxOverworld.h"


CAppDragonWarrior	*g_TheAppDragonWarrior;

CAppDragonWarrior::CAppDragonWarrior():
CApp("AppDragonWarrior.application")
{

}

void
CAppDragonWarrior::OnPostCreate(void)
{
	Init(MAX_CTX);

	RegisterContext(CTX_OVERWORLD, new CCtxOverworld("CtxOverworld.context"));

	SetCurContext(CTX_OVERWORLD);

	CApp::OnPostCreate();
}

CApp*
newGameApp(void)
{
	return g_TheAppDragonWarrior= new CAppDragonWarrior();
}


ENTRY_POINT("DragonWarrior");
