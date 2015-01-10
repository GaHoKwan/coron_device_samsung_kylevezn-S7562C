.class Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;
.super Landroid/os/AsyncTask;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PickContactAddButtonTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private invalid:Ljava/lang/String;

.field private isCancelledFlag:Z

.field private isDuplicatedFlag:Z

.field private isInvalidRecipientFlag:Z

.field private isMaxRecipientFlag:Z

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 19112
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19113
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->isCancelledFlag:Z

    .line 19114
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->isDuplicatedFlag:Z

    .line 19115
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->isMaxRecipientFlag:Z

    .line 19116
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->isInvalidRecipientFlag:Z

    .line 19117
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->invalid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 19155
    .local p1, selectedNumbers:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    aget-object v8, p1, v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 19158
    .local v1, contactList:Lcom/android/mms/data/ContactList;
    new-instance v7, Lcom/android/mms/data/ContactList;

    invoke-direct {v7}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 19161
    .local v7, validcontactList:Lcom/android/mms/data/ContactList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_0

    .line 19162
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 19225
    :goto_0
    return-object v8

    .line 19164
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19165
    .local v4, invalidRecipients:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 19166
    .local v2, count:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 19168
    .local v0, c:Lcom/android/mms/data/Contact;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->RapidMakeToButtons(Ljava/lang/String;Ljava/lang/String;Z)I
    invoke-static {v8, v9, v10, v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16000(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v6

    .line 19175
    .local v6, ret:I
    const/4 v8, 0x2

    if-ne v6, v8, :cond_6

    .line 19176
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->isMaxRecipientFlag:Z

    .line 19201
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v6           #ret:I
    :cond_2
    if-lez v2, :cond_3

    .line 19204
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setRecipientsOnRecipientsEditor()V
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16100(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 19206
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v7}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 19211
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFocusToComposerField()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v8

    if-eqz v8, :cond_4

    .line 19212
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask$2;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask$2;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 19220
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 19221
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->invalid:Ljava/lang/String;

    .line 19225
    :cond_5
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    .line 19178
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v6       #ret:I
    :cond_6
    const/4 v8, 0x3

    if-ne v6, v8, :cond_7

    .line 19179
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->isDuplicatedFlag:Z

    goto :goto_1

    .line 19180
    :cond_7
    const/4 v8, 0x4

    if-ne v6, v8, :cond_b

    .line 19181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_8

    .line 19182
    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19184
    :cond_8
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 19186
    .local v5, number:Ljava/lang/String;
    const/16 v8, 0x3b

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_9

    .line 19187
    const/16 v8, 0x3b

    const/16 v9, 0x57

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 19189
    :cond_9
    const/16 v8, 0x2c

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_a

    .line 19190
    const/16 v8, 0x2c

    const/16 v9, 0x50

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 19193
    :cond_a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19194
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->isInvalidRecipientFlag:Z

    goto/16 :goto_1

    .line 19195
    .end local v5           #number:Ljava/lang/String;
    :cond_b
    if-nez v6, :cond_1

    .line 19196
    add-int/lit8 v2, v2, 0x1

    .line 19197
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19112
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 21
    .parameter "result"

    .prologue
    .line 19232
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_10

    .line 19237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v7, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->UpdateWorkingRecipients(Z)V
    invoke-static {v2, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16200(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    .line 19239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 19241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v2}, Lcom/android/mms/ui/ToButtonLayout;->removeAllButtons()V

    .line 19243
    const/4 v5, 0x0

    .line 19244
    .local v5, x:I
    const/4 v6, 0x0

    .line 19247
    .local v6, y:I
    const/high16 v2, 0x4210

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16300(Lcom/android/mms/ui/ComposeMessageFragment;)F

    move-result v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 19248
    .local v10, mButtonHeight:I
    const/high16 v2, 0x4140

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16300(Lcom/android/mms/ui/ComposeMessageFragment;)F

    move-result v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 19249
    .local v13, mButtonPadding:I
    const/high16 v2, 0x4100

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16300(Lcom/android/mms/ui/ComposeMessageFragment;)F

    move-result v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 19250
    .local v11, mButtonMarginHeight:I
    const/high16 v2, 0x40c0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16300(Lcom/android/mms/ui/ComposeMessageFragment;)F

    move-result v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 19251
    .local v12, mButtonMarginWidth:I
    const/4 v14, 0x0

    .line 19253
    .local v14, mExceptButton:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    .line 19254
    const/high16 v2, 0x4274

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16300(Lcom/android/mms/ui/ComposeMessageFragment;)F

    move-result v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 19291
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mScreenWidth:I
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16500(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v2

    sub-int v18, v2, v14

    .line 19293
    .local v18, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ToButton;

    .line 19300
    .local v3, toButton:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 19303
    .local v16, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    move-object/from16 v0, v16

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    invoke-static {v2, v0, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16600(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v2

    add-int v4, v2, v13

    .line 19306
    .local v4, toButtonWidth:I
    move/from16 v0, v18

    if-lt v4, v0, :cond_0

    .line 19307
    move/from16 v4, v18

    .line 19310
    :cond_0
    add-int v17, v5, v4

    .line 19312
    .local v17, tempX:I
    if-lez v5, :cond_1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 19313
    const/4 v5, 0x0

    .line 19314
    add-int v17, v5, v4

    .line 19315
    add-int v2, v10, v11

    add-int/2addr v6, v2

    .line 19318
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16300(Lcom/android/mms/ui/ComposeMessageFragment;)F

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/ToButtonLayout;->addButton(Landroid/view/View;IIIF)V

    .line 19319
    add-int v5, v17, v12

    .line 19320
    goto :goto_1

    .line 19256
    .end local v3           #toButton:Lcom/android/mms/ui/ToButton;
    .end local v4           #toButtonWidth:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #tempX:I
    .end local v18           #width:I
    :cond_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_3

    .line 19257
    const/high16 v2, 0x427c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16300(Lcom/android/mms/ui/ComposeMessageFragment;)F

    move-result v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    goto :goto_0

    .line 19261
    :cond_3
    const-string v2, "uk"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "az"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "cs"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "et"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ga"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "kk"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "hu"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ro"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "sk"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "el"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ru"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19272
    :cond_4
    const/high16 v2, 0x42a0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16300(Lcom/android/mms/ui/ComposeMessageFragment;)F

    move-result v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    goto/16 :goto_0

    .line 19273
    :cond_5
    const-string v2, "hr"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "uz"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19276
    :cond_6
    const/high16 v2, 0x42b0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16300(Lcom/android/mms/ui/ComposeMessageFragment;)F

    move-result v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    goto/16 :goto_0

    .line 19277
    :cond_7
    const-string v2, "ko"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 19278
    const/high16 v2, 0x4288

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16300(Lcom/android/mms/ui/ComposeMessageFragment;)F

    move-result v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    goto/16 :goto_0

    .line 19279
    :cond_8
    const-string v2, "es"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 19282
    const/high16 v2, 0x4296

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16300(Lcom/android/mms/ui/ComposeMessageFragment;)F

    move-result v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    goto/16 :goto_0

    .line 19284
    :cond_9
    const/high16 v2, 0x4260

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16300(Lcom/android/mms/ui/ComposeMessageFragment;)F

    move-result v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    goto/16 :goto_0

    .line 19325
    .end local v5           #x:I
    .end local v6           #y:I
    .end local v10           #mButtonHeight:I
    .end local v11           #mButtonMarginHeight:I
    .end local v12           #mButtonMarginWidth:I
    .end local v13           #mButtonPadding:I
    .end local v14           #mExceptButton:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v7, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->restrictContactListener:Z
    invoke-static {v2, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 19327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 19328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v2, :cond_b

    .line 19329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 19335
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 19337
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->isInvalidRecipientFlag:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_c

    .line 19338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v19, 0x7f0a01c6

    move/from16 v0, v19

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7000(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v19, 0x7f0a0499

    move/from16 v0, v19

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7000(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->invalid:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 19342
    .local v15, message:Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 19343
    .local v8, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a01c5

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 19344
    const v2, 0x104000a

    new-instance v7, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->invalid:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V

    invoke-virtual {v8, v2, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 19346
    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsKeyListener;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->invalid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v2, v7, v0}, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsKeyListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 19349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12702(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 19351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_c

    .line 19352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 19356
    .end local v8           #builder:Landroid/app/AlertDialog$Builder;
    .end local v15           #message:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->isMaxRecipientFlag:Z

    if-eqz v2, :cond_d

    .line 19357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->showMaxRecipientToast()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16700(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 19360
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->isDuplicatedFlag:Z

    if-eqz v2, :cond_e

    .line 19361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->showDupplicatedRecipientToast()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 19368
    :cond_e
    :goto_3
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 19369
    return-void

    .line 19331
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 19332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    goto/16 :goto_2

    .line 19364
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v7, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->restrictContactListener:Z
    invoke-static {v2, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 19365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19112
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 19122
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask$1;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;Landroid/content/Context;)V

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15802(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 19136
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->isCancelledFlag:Z

    .line 19137
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->isDuplicatedFlag:Z

    .line 19138
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->isMaxRecipientFlag:Z

    .line 19139
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->isInvalidRecipientFlag:Z

    .line 19141
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v2, 0x7f0a01f7

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 19143
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 19144
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 19146
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->restrictContactListener:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 19149
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 19150
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 19374
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 19375
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19112
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
