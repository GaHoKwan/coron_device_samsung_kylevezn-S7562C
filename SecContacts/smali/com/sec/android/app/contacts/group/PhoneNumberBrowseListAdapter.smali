.class public Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PhoneNumberBrowseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/contacts/model/PhoneNumberInfo;",
        ">;"
    }
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/PhoneNumberInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, phoneNumberInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/PhoneNumberInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 39
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/contacts/model/PhoneNumberInfo;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "phoneNumberInfo"

    .prologue
    .line 60
    const-string v4, ""

    .line 61
    .local v4, typeString:Ljava/lang/String;
    iget-object v0, p3, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;->number:Ljava/lang/String;

    .line 62
    .local v0, phoneNumber:Ljava/lang/String;
    iget v1, p3, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;->type:I

    .line 63
    .local v1, phoneNumberType:I
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    const v5, 0x1020014

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 66
    .local v2, text1:Landroid/widget/TextView;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v5, 0x1020015

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 69
    .local v3, text2:Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/contacts/model/PhoneNumberInfo;)V

    .line 51
    return-object v0

    .line 48
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
    .line 55
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040070

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, view:Landroid/view/View;
    return-object v0
.end method
