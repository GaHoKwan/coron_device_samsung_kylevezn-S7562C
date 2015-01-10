.class public Lcom/android/mms/ui/AttachmentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AttachmentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/AttachmentModel;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private attachment:Lcom/android/mms/model/AttachmentModel;

.field private contentType:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNumberOfAttachments:I

.field private final mResource:I

.field private mSaveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->contentType:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mResource:I

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 43
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mNumberOfAttachments:I

    .line 44
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 66
    if-nez p2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mResource:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/AttachmentModel;

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->attachment:Lcom/android/mms/model/AttachmentModel;

    .line 71
    const v2, 0x7f0e002b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->attachment:Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 74
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    const v2, 0x7f0e002c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 88
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 90
    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    invoke-virtual {p2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 111
    const v2, 0x7f020233

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 113
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    return-object p2
.end method

.method public isChecked(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 140
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 141
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mNumberOfAttachments:I

    if-ge v0, v1, :cond_2

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->isChecked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 150
    .end local v0           #index:I
    :cond_0
    :goto_1
    return-void

    .line 141
    .restart local v0       #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->toggle(I)V

    .line 154
    return-void
.end method

.method public setChecked(IZ)V
    .locals 1
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 125
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 127
    :cond_0
    return-void
.end method

.method public setSaveButton(Landroid/widget/Button;)V
    .locals 2
    .parameter "bt"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 160
    return-void
.end method

.method public toggle(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentListAdapter;->isChecked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->setChecked(IZ)V

    .line 131
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
