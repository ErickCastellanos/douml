#ifndef _UMLUSECASE_H
#define _UMLUSECASE_H


#include "UmlBaseUseCase.h"
#include <QByteArray>

class FileOut;

// This class manages 'use case'
//
// You can modify it as you want (except the constructor)
class UmlUseCase : public UmlBaseUseCase
{
public:
    UmlUseCase(void * id, const QByteArray & n) : UmlBaseUseCase(id, n) {};

    virtual void ref(FileOut & out);

    virtual bool write_if_needed(FileOut & out);

    virtual void write(FileOut & out);

};

#endif
