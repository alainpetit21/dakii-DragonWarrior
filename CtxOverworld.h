#ifndef CTX_Overworld_H
#define CTX_Overworld_H

#include "dfcContext.h"
#include "dfcEntity.h"
#include "dfc3DEntity.h"
#include "dfcLabel.h"

class CCtxOverworld : public CContext
{
public:
	CCtxOverworld(const char* p_pRes):CContext(p_pRes){};

	virtual void Activate(void);
	virtual void Deactivate(void);
	virtual void Manage(unsigned long p_nTimeTick);
	virtual void Update(void);

};

#endif //CTX_Overworld_H
