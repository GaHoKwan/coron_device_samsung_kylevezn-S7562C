.class public Lcom/android/mms/template/TextTemplateListAdapter;
.super Landroid/widget/CursorAdapter;
.source "TextTemplateListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/TextTemplateListAdapter"


# instance fields
.field private mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMode:I

.field mOnContentChangedListener:Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "mode"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckedList:Ljava/util/ArrayList;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    iput p3, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mMode:I

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/template/TextTemplateListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/template/TextTemplateListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addCheckedItem(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/mms/template/TextTemplateListAdapter;->isCheckedItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const v9, 0x7f0e020b

    const/4 v7, 0x0

    .line 60
    const v6, 0x7f0e020a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mTextView:Landroid/widget/TextView;

    .line 62
    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 63
    .local v0, colChecked:I
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 65
    .local v1, colID:I
    invoke-static {p2}, Lcom/android/mms/MmsConfig;->getTextTemplate(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, texts:[Ljava/lang/String;
    if-ltz v0, :cond_2

    .line 68
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmbeddedTextTemplateType()I

    move-result v6

    sget v8, Lcom/android/mms/MmsConfig;->TEXT_TEMPLATE_TYPE_GENERIC:I

    if-ne v6, v8, :cond_0

    .line 69
    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mTextView:Landroid/widget/TextView;

    aget-object v8, v5, v1

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 77
    .local v2, mCheckBox:Landroid/widget/CheckBox;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 79
    .local v4, pos:I
    iget v6, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mMode:I

    if-eqz v6, :cond_3

    move v3, v7

    .line 80
    .local v3, mVisibility:I
    :goto_1
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    new-instance v6, Lcom/android/mms/template/TextTemplateListAdapter$1;

    invoke-direct {v6, p0, v2, v4}, Lcom/android/mms/template/TextTemplateListAdapter$1;-><init>(Lcom/android/mms/template/TextTemplateListAdapter;Landroid/widget/CheckBox;I)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 99
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    new-instance v6, Lcom/android/mms/template/TextTemplateListAdapter$2;

    invoke-direct {v6, p0}, Lcom/android/mms/template/TextTemplateListAdapter$2;-><init>(Lcom/android/mms/template/TextTemplateListAdapter;)V

    invoke-virtual {v2, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 110
    iget v6, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mMode:I

    if-eqz v6, :cond_1

    .line 111
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/mms/template/TextTemplateListAdapter;->isCheckedItem(I)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 113
    :cond_1
    return-void

    .line 73
    .end local v2           #mCheckBox:Landroid/widget/CheckBox;
    .end local v3           #mVisibility:I
    .end local v4           #pos:I
    :cond_2
    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mTextView:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    .restart local v2       #mCheckBox:Landroid/widget/CheckBox;
    .restart local v4       #pos:I
    :cond_3
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public clearCheckedList()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 158
    return-void
.end method

.method public getCheckedList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCheckedSize()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isCheckedItem(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030082

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, v:Landroid/view/View;
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "Mms/TextTemplateListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mOnContentChangedListener:Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mOnContentChangedListener:Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/template/TextTemplateListAdapter;)V

    .line 131
    :cond_0
    return-void
.end method

.method public removeCheckedItem(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/mms/template/TextTemplateListAdapter;->isCheckedItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mMode:I

    .line 49
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mOnContentChangedListener:Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;

    .line 121
    return-void
.end method
