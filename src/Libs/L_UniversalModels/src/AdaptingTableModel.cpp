// *************************************************************************
//
// Copyright 2012-2013 Nikolai Marchenko.
//
// This file is part of the Douml Uml Toolkit.
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License Version 3.0 as published by
// the Free Software Foundation and appearing in the file LICENSE.GPL included in the
//  packaging of this file.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License Version 3.0 for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
//
// e-mail : doumleditor@gmail.com
//
// *************************************************************************


#include "../include/AdaptingTableModel.h"
#include "../include/TableDataInterface.h"
#include "../include/AdaptingTableModelPrivate.h"

AdaptingTableModel::AdaptingTableModel(QObject * parent) : QAbstractTableModel(parent),
d_ptr(new AdaptingTableModelPrivate())
{
    // Bouml preserved body begin 0020EEAA
    // Bouml preserved body end 0020EEAA
}

AdaptingTableModel::~AdaptingTableModel() 
{
    // Bouml preserved body begin 0020EF2A
    delete d_ptr;
    // Bouml preserved body end 0020EF2A
}

QVariant AdaptingTableModel::data(const QModelIndex & index, int role) const 
{
    // Bouml preserved body begin 0020EFAA
    Q_D(const AdaptingTableModel);
    if(!index.isValid())
        return QVariant();
    return d->interface->GetValue(index.row(),  index.column(), role);
    // Bouml preserved body end 0020EFAA
}

bool AdaptingTableModel::setData(const QModelIndex & index, const QVariant & value, int role) 
{
    // Bouml preserved body begin 0021172A
    Q_D(AdaptingTableModel);
    if(!index.isValid())
        return false;
    d->interface->SetValue(index.row(),  index.column(), role, value);
    return true;
    // Bouml preserved body end 0021172A
}

int AdaptingTableModel::rowCount(const QModelIndex & index) const 
{
    // Bouml preserved body begin 0020F02A
    Q_UNUSED(index);
    Q_D(const AdaptingTableModel);
    return d->interface->rowCount();
    // Bouml preserved body end 0020F02A
}

int AdaptingTableModel::columnCount(const QModelIndex & index) const 
{
    // Bouml preserved body begin 0020F0AA
    Q_UNUSED(index);
    Q_D(const AdaptingTableModel);
    return d->interface->columnCount();
    // Bouml preserved body end 0020F0AA
}

void AdaptingTableModel::SetInterface(QSharedPointer<TableDataInterface> _interface) 
{
    // Bouml preserved body begin 00218B2A
    Q_D(AdaptingTableModel);
    d->interface = _interface;
    TableDataInterface* interfacePointer = d->interface.data();
    connect(interfacePointer, SIGNAL(reloadData()), this, SLOT(OnReloadDataFromInterface()));
    // Bouml preserved body end 00218B2A
}

QModelIndex AdaptingTableModel::index(int row, int column, const QModelIndex & parent) const 
{
    // Bouml preserved body begin 00213CAA
    Q_D(const AdaptingTableModel);
    if (!hasIndex(row, column, parent))
        return QModelIndex();
    return createIndex(row, column, d->interface->InternalPointer(row));
    // Bouml preserved body end 00213CAA
}

Qt::ItemFlags AdaptingTableModel::flags(const QModelIndex & index) const 
{
    // Bouml preserved body begin 002170AA
    if (!index.isValid())
        return 0;

    Qt::ItemFlags flags = Qt::ItemIsEnabled | Qt::ItemIsSelectable;

    if ( index.column() == 0 )
        flags |= Qt::ItemIsUserCheckable;

    return flags;
    // Bouml preserved body end 002170AA
}

QVariant AdaptingTableModel::headerData(int section, Qt::Orientation orientation, int role) const 
{
    // Bouml preserved body begin 0021712A
    Q_D(const AdaptingTableModel);
    if(d->interface->rowCount() == 0 )
        return QVariant();
    if (orientation == Qt::Horizontal && role == Qt::DisplayRole)
    {
        //qDebug() << interface->GetColumns().at(section);
        return d->interface->GetColumns().at(section);
    }
    return QVariant();
    // Bouml preserved body end 0021712A
}

void AdaptingTableModel::OnReloadDataFromInterface() 
{
    // Bouml preserved body begin 0021702A
    Q_D(AdaptingTableModel);
    reset();

    if(d->interface->PreviousRowCount() != 0)
    {
        int removeLimit = d->interface->PreviousRowCount() == 0 ? 0 : d->interface->PreviousRowCount()- 1;
        beginRemoveRows(QModelIndex(), 0, removeLimit);
        endRemoveRows();
    }
    if(d->interface->rowCount() != 0)
    {
        beginInsertRows(QModelIndex(), 0, d->interface->rowCount()-1);
        endInsertRows();
    }
    // Bouml preserved body end 0021702A
}

#include "moc_AdaptingTableModel.cpp"
