.class Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ConversationListRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/ConversationListRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/ConversationListRestore;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/ui/ConversationListRestore;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;>;"
    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    .line 272
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 273
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 277
    move-object/from16 v8, p2

    .line 278
    .local v8, item:Landroid/view/View;
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    .line 279
    .local v4, conv:Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;
    invoke-virtual {v4}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v11

    .line 280
    .local v11, recipient:Lcom/android/mms/data/ContactList;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f02024d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 281
    .local v7, defaultAvatar:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 283
    .local v3, buf:Landroid/text/SpannableStringBuilder;
    if-nez v8, :cond_0

    .line 284
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v13}, Lcom/samsung/mms/ui/ConversationListRestore;->access$500(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f030024

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 287
    :cond_0
    const v13, 0x7f0e00db

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 288
    .local v5, convItem:Landroid/widget/CheckBox;
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 289
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/view/View;->setClickable(Z)V

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v13}, Lcom/samsung/mms/ui/ConversationListRestore;->access$200(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/CheckBox;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 291
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 296
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/mms/ui/ConversationListRestore;->access$600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v13}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, addr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/mms/ui/ConversationListRestore;->access$700(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v5, v13}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 298
    new-instance v13, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v1}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter$1;-><init>(Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;Landroid/widget/CheckBox;Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    const v13, 0x7f0e00d9

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 317
    .local v6, dateText:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getDate()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    const v13, 0x7f0e00dc

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 320
    .local v2, addressText:Landroid/widget/TextView;
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 321
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/Contact;

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_1
    const-string v13, "Mms/ConversationListRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Address set is:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const v13, 0x7f0e00a2

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 331
    .local v10, msgText:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    const v13, 0x7f0e00d7

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 335
    .local v12, unreadText:Landroid/widget/TextView;
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 342
    const v13, 0x7f0e00d4

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/QuickContactBadge;

    .line 343
    .local v9, mAvatarView:Landroid/widget/QuickContactBadge;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/Contact;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-virtual {v13, v14, v7}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/View;->setClickable(Z)V

    .line 346
    return-object v8

    .line 293
    .end local v1           #addr:Ljava/lang/String;
    .end local v2           #addressText:Landroid/widget/TextView;
    .end local v6           #dateText:Landroid/widget/TextView;
    .end local v9           #mAvatarView:Landroid/widget/QuickContactBadge;
    .end local v10           #msgText:Landroid/widget/TextView;
    .end local v12           #unreadText:Landroid/widget/TextView;
    :cond_2
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0
.end method
