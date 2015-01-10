.class Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;
.super Ljava/lang/Object;
.source "RcsActionBarViewContactPinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RcsOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 184
    sget-object v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    const-string v4, "clicked rcs action"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 186
    .local v1, i:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 222
    sget-object v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    const-string v4, "rcs action click acured with no default action"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_0
    sget-object v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    const-string v4, "clicked rcs action IM"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    #getter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIMPossibleActions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$000(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 190
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    #getter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIMPossibleActions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$000(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    iget-object v2, v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mIntent:Landroid/content/Intent;

    .line 191
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v3, v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 192
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    #getter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIMPossibleActions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$000(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 193
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v5, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    #getter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIMPossibleActions:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$000(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Ljava/util/ArrayList;

    move-result-object v5

    #calls: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->reOrdering(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$100(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    #calls: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->buildDialog(Ljava/util/ArrayList;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$200(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 198
    :pswitch_1
    sget-object v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    const-string v4, "clicked rcs action FT"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    #getter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$300(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 201
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    #getter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$300(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    iget-object v2, v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mIntent:Landroid/content/Intent;

    .line 202
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v3, v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 204
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v3, v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03ef

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 206
    sget-object v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FT Failed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    #getter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$300(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 210
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->updateUI()V

    goto/16 :goto_0

    .line 212
    .end local v0           #anfe:Landroid/content/ActivityNotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    #getter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$300(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 213
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v5, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    #getter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$300(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Ljava/util/ArrayList;

    move-result-object v5

    #calls: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->reOrdering(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$100(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    #calls: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->buildDialog(Ljava/util/ArrayList;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$200(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 218
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    #getter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static {v3}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$400(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v3

    iget-object v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 219
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v3, v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
