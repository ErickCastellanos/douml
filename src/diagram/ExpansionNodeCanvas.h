// *************************************************************************
//
// Copyright 2004-2010 Bruno PAGES  .
// Copyright 2012-2013 Nikolai Marchenko.
// Copyright 2012-2013 Leonardo Guilherme.
//
// This file is part of the DOUML Uml Toolkit.
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
// home   : http://sourceforge.net/projects/douml
//
// *************************************************************************

#ifndef EXPANSIONNODECANVAS_H
#define EXPANSIONNODECANVAS_H

#include "DiagramCanvas.h"
//Added by qt3to4:
#include <QTextStream>

class ExpansionRegionCanvas;

#define EXPANSIONNODE_WIDTH 33
#define EXPANSIONNODE_HEIGHT 11

class ExpansionNodeCanvas : public QObject, public DiagramCanvas
{
    Q_OBJECT

protected:
    ExpansionRegionCanvas * region;
    UmlColor itscolor;
    UmlColor used_color;

public:
    ExpansionNodeCanvas(BrowserNode * bn, UmlCanvas * canvas, int x, int y,
                        int id, ExpansionRegionCanvas * r);
    virtual ~ExpansionNodeCanvas();

    virtual void delete_it();

    void update();
    void check_position();

    virtual void draw(QPainter & p);

    virtual UmlCode type() const;
    virtual bool copyable() const;
    virtual void remove(bool from_model);
    virtual void open();
    virtual void menu(const QPoint &);
    virtual QString may_start(UmlCode &) const;
    virtual QString may_connect(UmlCode & l, const DiagramItem * dest) const;
    virtual void connexion(UmlCode, DiagramItem *, const QPoint &, const QPoint &);
    virtual void change_scale();
    virtual void moveBy(double dx, double dy);
    void do_moveBy(double dx, double dy);
    void do_change_scale();

    bool region_selected() const;

    virtual void save(QTextStream &, bool ref, QString & warning) const;
    static ExpansionNodeCanvas * read(char *& , UmlCanvas *, char *, ExpansionRegionCanvas *);
    virtual void post_loaded();

    virtual void history_save(QBuffer &) const;
    virtual void history_load(QBuffer &);
    virtual void history_hide();

    virtual bool has_drawing_settings() const;
    virtual void edit_drawing_settings(Q3PtrList<DiagramItem> &);
    virtual void clone_drawing_settings(const DiagramItem *src);
    void edit_drawing_settings();

    virtual void apply_shortcut(QString s);

private slots:
    void modified();	// canvas must be updated
    void deleted();
};

#endif
