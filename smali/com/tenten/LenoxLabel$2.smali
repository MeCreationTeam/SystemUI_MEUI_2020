.class Lcom/tenten/LenoxLabel$2;
.super Ljava/lang/Object;
.source "LenoxLabel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenten/LenoxLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenten/LenoxLabel;


# direct methods
.method constructor <init>(Lcom/tenten/LenoxLabel;)V
    .locals 0

    iput-object p1, p0, Lcom/tenten/LenoxLabel$2;->this$0:Lcom/tenten/LenoxLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tenten/LenoxLabel$2;->this$0:Lcom/tenten/LenoxLabel;

    iget-object v0, v0, Lcom/tenten/LenoxLabel;->text1:Ljava/lang/String;

    iget-object v1, p0, Lcom/tenten/LenoxLabel$2;->this$0:Lcom/tenten/LenoxLabel;

    invoke-virtual {v1}, Lcom/tenten/LenoxLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tenten/LenoxLabel$2;->this$0:Lcom/tenten/LenoxLabel;

    iget-object v1, p0, Lcom/tenten/LenoxLabel$2;->this$0:Lcom/tenten/LenoxLabel;

    iget-object v1, v1, Lcom/tenten/LenoxLabel;->text2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tenten/LenoxLabel;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/tenten/LenoxLabel$2;->this$0:Lcom/tenten/LenoxLabel;

    invoke-virtual {v0}, Lcom/tenten/LenoxLabel;->dosomemagic()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tenten/LenoxLabel$2;->this$0:Lcom/tenten/LenoxLabel;

    iget-object v1, p0, Lcom/tenten/LenoxLabel$2;->this$0:Lcom/tenten/LenoxLabel;

    iget-object v1, v1, Lcom/tenten/LenoxLabel;->text1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tenten/LenoxLabel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
