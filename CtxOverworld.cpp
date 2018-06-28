#include "lib.h"
#include "libTypes.h"
#include "libMath.h"
#include "libMngInput.h"
#include "dfcApp.h"
#include "CtxOverworld.h"

void 
CCtxOverworld::Activate(void)
{
	CContext::Activate();
}

void 
CCtxOverworld::Deactivate(void)
{
	CContext::Deactivate();
}

void 
CCtxOverworld::Manage(unsigned long p_nTimeTick)
{
CMngInput	*pMngInput 	= GetMngInput();
	if(pMngInput->IsLogicKeyDown(IK_ESCAPE)){
		System_Quit();
		return;
	}

	CContext::Manage(p_nTimeTick);
}

void 
CCtxOverworld::Update(void)
{
	CContext::Update();
}
