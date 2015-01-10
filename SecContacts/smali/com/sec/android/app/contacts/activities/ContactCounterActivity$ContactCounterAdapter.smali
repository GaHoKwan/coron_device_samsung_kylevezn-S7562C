.class Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactCounterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/ContactCounterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactCounterAdapter"
.end annotation


# instance fields
.field private final mCustomRow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p2, customRow:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 323
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 325
    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;->mCustomRow:Ljava/util/List;

    .line 326
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;->mCustomRow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;
    .locals 1
    .parameter "position"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;->mCustomRow:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 335
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 345
    if-eqz p2, :cond_2

    .line 346
    move-object v1, p2

    .line 352
    .local v1, mCustomView:Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;->mCustomRow:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;

    .line 353
    .local v0, customRow:Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;
    const v4, 0x7f090104

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 354
    .local v2, mTextView1:Landroid/widget/TextView;
    const v4, 0x7f090105

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 355
    .local v3, mTextView2:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->getCol1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :cond_0
    if-eqz v3, :cond_1

    .line 358
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->getCol2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :cond_1
    return-object v1

    .line 348
    .end local v0           #customRow:Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;
    .end local v1           #mCustomView:Landroid/view/View;
    .end local v2           #mTextView1:Landroid/widget/TextView;
    .end local v3           #mTextView2:Landroid/widget/TextView;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04002d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .restart local v1       #mCustomView:Landroid/view/View;
    goto :goto_0
.end method
