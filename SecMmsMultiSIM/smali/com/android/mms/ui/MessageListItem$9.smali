.class Lcom/android/mms/ui/MessageListItem$9;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 2415
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16
    .parameter "v"

    .prologue
    .line 2418
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$2900(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$2900(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v11

    iget-object v11, v11, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/mms/ui/MessageListItem;->access$4000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a0011

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2419
    const/4 v7, 0x0

    .line 2421
    .local v7, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$4100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v12}, Lcom/android/mms/ui/MessageListItem;->access$2900(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v12

    iget-object v12, v12, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object v7, v0
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2425
    :goto_0
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    .line 2426
    .local v10, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2428
    .local v9, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2429
    .local v3, count:I
    if-eqz v10, :cond_2

    .line 2430
    move-object v2, v10

    .local v2, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v8, v2, v5

    .line 2431
    .local v8, recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v3, :cond_0

    .line 2432
    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2434
    :cond_0
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2435
    add-int/lit8 v3, v3, 0x1

    .line 2430
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2422
    .end local v2           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v3           #count:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .end local v10           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v4

    .line 2423
    .local v4, e:Lcom/google/android/mms/MmsException;
    const-string v11, "Mms/MessageListItem"

    const-string v12, "Failed to load the message: "

    invoke-static {v11, v12, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2437
    .end local v4           #e:Lcom/google/android/mms/MmsException;
    .restart local v2       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #count:I
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    .restart local v10       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2461
    .end local v2           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v10           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v1, address:Ljava/lang/String;
    :goto_2
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/mms/ui/MessageListItem;->access$4400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x1010355

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0177

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/mms/ui/MessageListItem;->access$4300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a03db

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "%s"

    invoke-virtual {v12, v13, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a006a

    new-instance v13, Lcom/android/mms/ui/MessageListItem$SendNowListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v15}, Lcom/android/mms/ui/MessageListItem;->access$2900(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/android/mms/ui/MessageListItem$SendNowListener;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a006b

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    sget-object v12, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2469
    return-void

    .line 2440
    .end local v1           #address:Ljava/lang/String;
    .restart local v7       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v10       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$4200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0a016f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #address:Ljava/lang/String;
    goto :goto_2

    .line 2445
    .end local v1           #address:Ljava/lang/String;
    .end local v3           #count:I
    .end local v7           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .end local v10           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2446
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2448
    .restart local v3       #count:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$2900(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v11

    iget-object v11, v11, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v6, :cond_6

    aget-object v8, v2, v5

    .line 2449
    .local v8, recipient:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2448
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2452
    :cond_4
    if-lez v3, :cond_5

    .line 2453
    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2455
    :cond_5
    invoke-static {v8}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2456
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2458
    .end local v8           #recipient:Ljava/lang/String;
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #address:Ljava/lang/String;
    goto/16 :goto_2
.end method
