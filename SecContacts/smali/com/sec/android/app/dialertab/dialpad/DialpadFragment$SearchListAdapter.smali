.class public Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
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
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5472
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 5473
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5474
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->items:Ljava/util/ArrayList;

    .line 5475
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 49
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 5479
    move-object/from16 v47, p2

    .line 5480
    .local v47, v:Landroid/view/View;
    if-nez v47, :cond_0

    .line 5481
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v7, "layout_inflater"

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/view/LayoutInflater;

    .line 5482
    .local v48, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f040088

    const/4 v7, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v47

    .line 5484
    .end local v48           #vi:Landroid/view/LayoutInflater;
    :cond_0
    const v5, 0x7f0901d3

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 5486
    .local v25, mFullnameView:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    .line 5487
    .local v44, ti:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 5488
    .local v15, args_number:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v27

    .line 5489
    .local v27, mlength:I
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 5490
    .local v21, inumber:Ljava/lang/String;
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getPhoneType()I

    move-result v34

    .line 5491
    .local v34, phoneType:I
    const-string v5, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5853
    .end local v27           #mlength:I
    :goto_0
    return-object v47

    .line 5494
    .restart local v27       #mlength:I
    :cond_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v42

    .line 5495
    .local v42, temp_length:I
    const/16 v36, 0x0

    .line 5496
    .local v36, photoBm:Landroid/graphics/Bitmap;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    .line 5497
    .local v22, inumberLen:I
    const/16 v31, 0x0

    .line 5498
    .local v31, numberType:I
    const/16 v29, 0x0

    .line 5499
    .local v29, numberLabel:Ljava/lang/CharSequence;
    const/16 v32, 0x0

    .line 5502
    .local v32, numbertype:Ljava/lang/CharSequence;
    const/16 v28, 0x0

    .line 5503
    .local v28, numberIsSim:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getContactID()I

    move-result v7

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getAccountType(I)Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)Ljava/lang/String;

    move-result-object v13

    .line 5506
    .local v13, accountType:Ljava/lang/String;
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getPhotoID()I

    move-result v5

    if-eqz v5, :cond_5

    .line 5507
    new-instance v33, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5508
    .local v33, options:Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getPhotoID()I

    move-result v7

    int-to-long v7, v7

    move-object/from16 v0, v33

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    invoke-static {v5, v7, v8, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v36

    .line 5509
    if-eqz v36, :cond_4

    .line 5510
    const v5, 0x7f0901d1

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 5511
    .local v24, mContactPhoto:Landroid/widget/ImageView;
    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5521
    .end local v33           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    const-string v5, "search_result_to_contact"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5522
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SearchListAdapter NAME_RESULT ti.getContactID() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getContactID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5524
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getContactID()I

    move-result v5

    if-ltz v5, :cond_6

    .line 5525
    new-instance v5, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v5, v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5546
    :cond_2
    :goto_2
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 5548
    :pswitch_0
    const v5, 0x7f0901d3

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5549
    const v5, 0x7f0901dd

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5550
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 5551
    const v5, 0x7f0901d4

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5556
    :goto_3
    const v5, 0x7f0901d5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5557
    const v5, 0x7f0901d6

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5558
    const v5, 0x7f0901d8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5560
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5561
    const v5, 0x7f0901df

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5562
    const v5, 0x7f0901e0

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5564
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 5565
    const v5, 0x7f0901de

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 5513
    .end local v24           #mContactPhoto:Landroid/widget/ImageView;
    .restart local v33       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    const v5, 0x7f0901d1

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 5514
    .restart local v24       #mContactPhoto:Landroid/widget/ImageView;
    const v5, 0x7f020363

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 5517
    .end local v24           #mContactPhoto:Landroid/widget/ImageView;
    .end local v33           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    const v5, 0x7f0901d1

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 5518
    .restart local v24       #mContactPhoto:Landroid/widget/ImageView;
    const v5, 0x7f020363

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 5542
    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_2

    .line 5554
    :cond_7
    const v5, 0x7f0901d4

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0d02f6

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 5568
    :pswitch_1
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5569
    const v5, 0x7f0901d3

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5570
    const v5, 0x7f0901dd

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5571
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_Contact_SeparateLookupTable4ChinaDialerSearch"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mIsQuickCommand:Z
    invoke-static/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->access$3400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 5574
    const v5, 0x7f0901d4

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5575
    const v5, 0x7f0901d5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5576
    const v5, 0x7f0901d6

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 5577
    .local v43, textView:Landroid/widget/TextView;
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getColorStringGetter()Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;

    move-result-object v16

    .line 5578
    .local v16, colorStringGetter:Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;
    if-eqz v16, :cond_8

    .line 5579
    const v5, 0x7f0b002d

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->setHightLightColor(I)I

    .line 5580
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->setColorForTextView(Landroid/content/res/Resources;Landroid/widget/TextView;)Z

    .line 5650
    .end local v16           #colorStringGetter:Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;
    .end local v27           #mlength:I
    .end local v43           #textView:Landroid/widget/TextView;
    :cond_8
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_Contact_SeparateLookupTable4ChinaDialerSearch"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "hongkong_taiwan_dialer"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 5652
    :cond_9
    const v5, 0x7f0901d8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5728
    :goto_5
    const v5, 0x7f0901d8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5582
    .restart local v27       #mlength:I
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v7, "iw"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 5583
    new-instance v26, Landroid/text/SpannableString;

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5584
    .local v26, mSpannableName:Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00dd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getIsQuickCommand()Z

    move-result v8

    if-eqz v8, :cond_b

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCurrentName:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v27

    .end local v27           #mlength:I
    :cond_b
    const/16 v8, 0x12

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v5, v7, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5587
    const v5, 0x7f0901d4

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 5589
    .end local v26           #mSpannableName:Landroid/text/SpannableString;
    .restart local v27       #mlength:I
    :cond_c
    const-string v5, "hongkong_taiwan_dialer"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mIsQuickCommand:Z
    invoke-static/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->access$3400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 5590
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v45

    .line 5591
    .local v45, tmpDisplayName:Ljava/lang/String;
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getSelection()Ljava/lang/String;

    move-result-object v38

    .line 5592
    .local v38, selection:Ljava/lang/String;
    if-eqz v38, :cond_d

    .line 5593
    move-object/from16 v0, v45

    move-object/from16 v1, v38

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getStartEndColorLocale(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3600(Ljava/lang/String;Ljava/lang/String;)V

    .line 5594
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3700()I

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->setColorStart(I)V

    .line 5595
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3800()I

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->setColorEnd(I)V

    .line 5596
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3702(I)I

    .line 5597
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3802(I)I

    .line 5602
    :goto_6
    if-eqz v45, :cond_8

    .line 5603
    const v5, 0x7f0901d4

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getColorStart()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5604
    const v5, 0x7f0901d5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getColorStart()I

    move-result v8

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getColorEnd()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5605
    const v5, 0x7f0901d6

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getColorEnd()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 5599
    :cond_d
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->setColorStart(I)V

    .line 5600
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->setColorEnd(I)V

    goto :goto_6

    .line 5608
    .end local v38           #selection:Ljava/lang/String;
    .end local v45           #tmpDisplayName:Ljava/lang/String;
    :cond_e
    const/16 v40, 0x0

    .local v40, startMatching:I
    const/16 v20, 0x0

    .line 5610
    .local v20, endMatching:I
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getIsQuickCommand()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 5611
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCurrentName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v40

    .line 5612
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCurrentName:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v20, v40, v5

    .line 5625
    :goto_7
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v18

    .line 5626
    .local v18, displayName:Ljava/lang/String;
    if-eqz v18, :cond_8

    .line 5627
    if-ltz v40, :cond_f

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v40

    if-lt v5, v0, :cond_f

    .line 5628
    const v5, 0x7f0901d4

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v7, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v40

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5630
    :cond_f
    if-ltz v40, :cond_10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v20

    if-lt v5, v0, :cond_10

    move/from16 v0, v40

    move/from16 v1, v20

    if-gt v0, v1, :cond_10

    .line 5632
    const v5, 0x7f0901d5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/TextView;

    .line 5633
    .local v46, tv:Landroid/widget/TextView;
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    move-object/from16 v0, v18

    move/from16 v1, v40

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    move-object/from16 v0, v18

    invoke-static {v5, v0, v7}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v37

    .line 5635
    .local v37, prefixForIndian:[C
    if-eqz v37, :cond_14

    .line 5636
    new-instance v41, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 5637
    .local v41, strPrefixForIndian:Ljava/lang/String;
    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5638
    move-object/from16 v0, v37

    array-length v5, v0

    add-int v20, v40, v5

    .line 5644
    .end local v37           #prefixForIndian:[C
    .end local v41           #strPrefixForIndian:Ljava/lang/String;
    .end local v46           #tv:Landroid/widget/TextView;
    :cond_10
    :goto_8
    if-ltz v20, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v20

    if-lt v5, v0, :cond_8

    .line 5645
    const v5, 0x7f0901d6

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 5614
    .end local v18           #displayName:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getActionCode()Ljava/lang/String;

    move-result-object v14

    .line 5615
    .local v14, actionCode:Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v40

    .line 5616
    if-eqz v40, :cond_13

    .line 5617
    const/16 v39, 0x0

    .line 5619
    .local v39, spaceMatching:I
    :cond_12
    const/16 v5, 0x5e

    add-int/lit8 v7, v39, 0x1

    invoke-virtual {v14, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v39

    .line 5620
    add-int/lit8 v5, v39, 0x1

    invoke-virtual {v14, v15, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v40

    .line 5621
    add-int/lit8 v5, v39, 0x1

    move/from16 v0, v40

    if-eq v0, v5, :cond_13

    const/4 v5, -0x1

    move/from16 v0, v39

    if-ne v0, v5, :cond_12

    .line 5623
    .end local v39           #spaceMatching:I
    :cond_13
    add-int v20, v40, v27

    goto/16 :goto_7

    .line 5640
    .end local v14           #actionCode:Ljava/lang/String;
    .restart local v18       #displayName:Ljava/lang/String;
    .restart local v37       #prefixForIndian:[C
    .restart local v46       #tv:Landroid/widget/TextView;
    :cond_14
    const v5, 0x7f0901d5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move/from16 v1, v40

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 5654
    .end local v18           #displayName:Ljava/lang/String;
    .end local v20           #endMatching:I
    .end local v27           #mlength:I
    .end local v37           #prefixForIndian:[C
    .end local v40           #startMatching:I
    .end local v46           #tv:Landroid/widget/TextView;
    :cond_15
    const-string v5, "content://com.android.contacts/contacts/"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "/data"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 5658
    .local v4, URI_PHONE:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 5661
    .local v3, providerClient:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3900()[Ljava/lang/String;

    move-result-object v5

    const-string v7, "mimetype"

    const-string v8, "=\'"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 5664
    .local v17, cur_phone:Landroid/database/Cursor;
    if-eqz v17, :cond_19

    .line 5665
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 5666
    const-string v5, "data1"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 5667
    const-string v5, "data2"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 5668
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v31 .. v31}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 5669
    :cond_16
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 5670
    const-string v5, "is_super_primary"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_16

    .line 5672
    const-string v5, "data1"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 5674
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v7, "data2"

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 5680
    :cond_17
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 5682
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v5

    if-lez v5, :cond_1d

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5683
    if-nez v31, :cond_1b

    .line 5684
    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 5686
    .local v6, phoneUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 5687
    .local v35, phonesCursor:Landroid/database/Cursor;
    if-eqz v35, :cond_19

    .line 5688
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 5689
    const/4 v5, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 5691
    :cond_18
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5718
    .end local v6           #phoneUri:Landroid/net/Uri;
    .end local v17           #cur_phone:Landroid/database/Cursor;
    .end local v35           #phonesCursor:Landroid/database/Cursor;
    :cond_19
    :goto_9
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 5720
    const v5, 0x7f0901d8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5721
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 5722
    const v5, 0x7f0901df

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5723
    const v5, 0x7f0901e0

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5725
    :cond_1a
    const v5, 0x7f0901de

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 5694
    .restart local v17       #cur_phone:Landroid/database/Cursor;
    :cond_1b
    const/4 v5, 0x2

    move/from16 v0, v31

    if-ne v0, v5, :cond_1c

    .line 5695
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v31 .. v31}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_9

    .line 5697
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0d03f2

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_9

    .line 5700
    :cond_1d
    if-nez v31, :cond_1f

    .line 5701
    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 5703
    .restart local v6       #phoneUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 5704
    .restart local v35       #phonesCursor:Landroid/database/Cursor;
    if-eqz v35, :cond_19

    .line 5705
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 5706
    const/4 v5, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 5708
    :cond_1e
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 5715
    .end local v6           #phoneUri:Landroid/net/Uri;
    .end local v17           #cur_phone:Landroid/database/Cursor;
    .end local v35           #phonesCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v19

    .line 5716
    .local v19, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SearchListAdapter2 providerClient has exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 5712
    .end local v19           #e:Landroid/os/RemoteException;
    .restart local v17       #cur_phone:Landroid/database/Cursor;
    :cond_1f
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v31 .. v31}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v29

    goto/16 :goto_9

    .line 5732
    .end local v3           #providerClient:Landroid/content/ContentProviderClient;
    .end local v4           #URI_PHONE:Landroid/net/Uri;
    .end local v17           #cur_phone:Landroid/database/Cursor;
    .restart local v27       #mlength:I
    :pswitch_2
    const v5, 0x7f0901d3

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5733
    const v5, 0x7f0901dd

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5734
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 5735
    const v5, 0x7f0901d4

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5740
    :goto_a
    const v5, 0x7f0901d5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5741
    const v5, 0x7f0901d6

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5742
    if-ltz v42, :cond_24

    move/from16 v0, v42

    move/from16 v1, v22

    if-gt v0, v1, :cond_24

    .line 5743
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 5744
    new-instance v30, Landroid/text/SpannableString;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5745
    .local v30, numberResultString:Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00dd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v27, v42

    const/16 v8, 0x12

    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5747
    const v5, 0x7f0901d8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5757
    .end local v30           #numberResultString:Landroid/text/SpannableString;
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 5758
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v5

    if-lez v5, :cond_27

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 5759
    if-nez v34, :cond_25

    .line 5760
    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 5762
    .restart local v6       #phoneUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 5763
    .restart local v35       #phonesCursor:Landroid/database/Cursor;
    if-eqz v35, :cond_21

    .line 5764
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 5765
    const/4 v5, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 5767
    :cond_20
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 5790
    .end local v6           #phoneUri:Landroid/net/Uri;
    .end local v35           #phonesCursor:Landroid/database/Cursor;
    :cond_21
    :goto_c
    const v5, 0x7f0901de

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5791
    const v5, 0x7f0901d8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5738
    :cond_22
    const v5, 0x7f0901d4

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0d02f6

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a

    .line 5749
    :cond_23
    const v5, 0x7f0901d8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v7, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v42

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5750
    const v5, 0x7f0901df

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5751
    const v5, 0x7f0901e0

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    add-int v7, v27, v42

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 5755
    :cond_24
    const v5, 0x7f0901d8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 5770
    :cond_25
    const/4 v5, 0x2

    move/from16 v0, v34

    if-ne v0, v5, :cond_26

    .line 5771
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 5773
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0d03f2

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 5776
    :cond_27
    if-nez v34, :cond_29

    .line 5777
    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 5779
    .restart local v6       #phoneUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 5780
    .restart local v35       #phonesCursor:Landroid/database/Cursor;
    if-eqz v35, :cond_21

    .line 5781
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 5782
    const/4 v5, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 5784
    :cond_28
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c

    .line 5788
    .end local v6           #phoneUri:Landroid/net/Uri;
    .end local v35           #phonesCursor:Landroid/database/Cursor;
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_c

    .line 5794
    :pswitch_3
    const v5, 0x7f0901d3

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5795
    const v5, 0x7f0901dd

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5804
    if-ltz v42, :cond_2b

    move/from16 v0, v42

    move/from16 v1, v22

    if-gt v0, v1, :cond_2b

    .line 5805
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 5806
    new-instance v23, Landroid/text/SpannableString;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5807
    .local v23, logResultString:Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00dd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v27, v42

    const/16 v8, 0x12

    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5809
    const v5, 0x7f0901d8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5819
    .end local v23           #logResultString:Landroid/text/SpannableString;
    :goto_d
    const v5, 0x7f0901d8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5811
    :cond_2a
    const v5, 0x7f0901d8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v7, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v42

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5812
    const v5, 0x7f0901df

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5813
    const v5, 0x7f0901e0

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    add-int v7, v27, v42

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 5817
    :cond_2b
    const v5, 0x7f0901d8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 5822
    :pswitch_4
    const v5, 0x7f0901d7

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5823
    const v5, 0x7f0901dd

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5824
    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2d

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2d

    .line 5825
    const v5, 0x7f0901d4

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5828
    :goto_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.android.contacts/contacts/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/data"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 5829
    .restart local v4       #URI_PHONE:Landroid/net/Uri;
    const-string v12, "is_super_primary DESC "

    .line 5831
    .local v12, orderBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 5834
    .restart local v3       #providerClient:Landroid/content/ContentProviderClient;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v9, v5, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_PHOTOID_FOR_FAVORITE:[Ljava/lang/String;

    const-string v10, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v11, 0x0

    move-object v7, v3

    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 5840
    .restart local v17       #cur_phone:Landroid/database/Cursor;
    if-eqz v17, :cond_2c

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 5841
    const v5, 0x7f0901d8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, "data1"

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5843
    :cond_2c
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 5847
    .end local v17           #cur_phone:Landroid/database/Cursor;
    :goto_f
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 5827
    .end local v3           #providerClient:Landroid/content/ContentProviderClient;
    .end local v4           #URI_PHONE:Landroid/net/Uri;
    .end local v12           #orderBy:Ljava/lang/String;
    :cond_2d
    const v5, 0x7f0901d4

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 5844
    .restart local v3       #providerClient:Landroid/content/ContentProviderClient;
    .restart local v4       #URI_PHONE:Landroid/net/Uri;
    .restart local v12       #orderBy:Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 5845
    .restart local v19       #e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processFavorites providerClient has exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 5546
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
