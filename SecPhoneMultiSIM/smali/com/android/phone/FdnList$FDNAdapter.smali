.class Lcom/android/phone/FdnList$FDNAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "FdnList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FDNAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnList;


# direct methods
.method public constructor <init>(Lcom/android/phone/FdnList;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "items"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/phone/FdnList$FDNAdapter;->this$0:Lcom/android/phone/FdnList;

    .line 273
    invoke-static {}, Lcom/android/phone/FdnList;->access$000()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/FdnList;->access$100()[I

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 274
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 278
    move-object v3, p2

    .line 279
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 280
    iget-object v5, p0, Lcom/android/phone/FdnList$FDNAdapter;->this$0:Lcom/android/phone/FdnList;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/android/phone/ADNList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 281
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f040040

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 284
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 285
    const v5, 0x7f0900d0

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 286
    .local v1, name:Landroid/widget/TextView;
    const v5, 0x7f090138

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 287
    .local v2, num:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 288
    iget-object v5, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_1
    if-eqz v2, :cond_2

    .line 292
    iget-object v5, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v5, p0, Lcom/android/phone/FdnList$FDNAdapter;->this$0:Lcom/android/phone/FdnList;

    #getter for: Lcom/android/phone/FdnList;->fdnNumber:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/phone/FdnList;->access$200(Lcom/android/phone/FdnList;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_2
    const v5, 0x7f09013b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 297
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 298
    new-instance v5, Lcom/android/phone/FdnList$FDNAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/android/phone/FdnList$FDNAdapter$1;-><init>(Lcom/android/phone/FdnList$FDNAdapter;I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const-string v5, "fdn_button_call"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    const v5, 0x7f090139

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 306
    const v5, 0x7f09013a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 309
    .end local v0           #btn:Landroid/widget/Button;
    .end local v1           #name:Landroid/widget/TextView;
    .end local v2           #num:Landroid/widget/TextView;
    :cond_3
    return-object v3
.end method
