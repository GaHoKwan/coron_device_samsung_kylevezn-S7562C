.class public Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataBrowseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountType:Ljava/lang/String;

.field final mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "layout"
    .parameter
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, dataSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 38
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 47
    iput-object p4, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;->mAccountType:Ljava/lang/String;

    .line 49
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "dataInfo"

    .prologue
    .line 53
    const-string v3, ""

    .line 54
    .local v3, kindString:Ljava/lang/String;
    const-string v9, ""

    .line 56
    .local v9, typeString:Ljava/lang/String;
    iget-object v5, p3, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    .line 57
    .local v5, mimeType:Ljava/lang/String;
    iget v0, p3, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataType:I

    .line 58
    .local v0, dataType:I
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v10, v11, v5}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    .line 60
    .local v2, kind:Lcom/android/contacts/model/DataKind;
    if-eqz v2, :cond_3

    .line 61
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    iget v11, v2, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    iget-object v10, v2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 64
    iget-object v10, v2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/AccountType$EditType;

    .line 65
    .local v8, type:Lcom/android/contacts/model/AccountType$EditType;
    iget v10, v8, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v10, v0, :cond_7

    .line 66
    iget-object v10, v8, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v10, :cond_6

    .line 70
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v10

    if-lez v10, :cond_5

    const-string v10, "vnd.sec.contact.sim"

    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 72
    iget v10, v8, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    const/4 v11, 0x2

    invoke-static {v11}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v11

    if-ne v10, v11, :cond_4

    .line 73
    iget v10, v8, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 94
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v8           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_1
    :goto_1
    const v10, 0x1020014

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 96
    .local v6, text1:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v4, kindTypeString:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    if-eqz v9, :cond_2

    .line 99
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .end local v4           #kindTypeString:Ljava/lang/StringBuilder;
    .end local v6           #text1:Landroid/widget/TextView;
    :cond_3
    const v10, 0x1020015

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 105
    .local v7, text2:Landroid/widget/TextView;
    iget-object v10, p3, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void

    .line 75
    .end local v7           #text2:Landroid/widget/TextView;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v8       #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_4
    const v10, 0x7f0d03f2

    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 78
    :cond_5
    iget v10, v8, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 82
    :cond_6
    iget-object v9, p3, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->typeString:Ljava/lang/String;

    .line 84
    goto :goto_1

    .line 86
    :cond_7
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v5, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 91
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v8           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_8
    const-string v9, ""

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 111
    if-nez p2, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)V

    .line 119
    return-object v0

    .line 114
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040070

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, view:Landroid/view/View;
    return-object v0
.end method
