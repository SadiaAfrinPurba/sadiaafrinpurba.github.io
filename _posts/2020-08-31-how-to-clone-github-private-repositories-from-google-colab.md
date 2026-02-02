---
title: "How to clone Github private repositories from Google Colab using SSH"
date: 2020-08-31 23:56:46 +0600
tags:
  - Google Colab
  - Github
  - Productivity
categories: []
show_in_blog: true
permalink: /blog/how-to-clone-github-private-repositories-from-google-colab/
---

## **Motivation**

Google Colaboratory (Google Colab or Colab in short) is popular among Deep Learning enthusiastic because it is a hosted Jupyter notebook service that requires no setup to use while providing free access to computing resources including GPUs. Basically, Colab provides a virtual machine with necessary Python packages for its users. Anyone can clone a public repository from Github and start training machine learning models by executing python scripts. However, this is not true for a private repository.

I am going to share a [workaround](https://colab.research.google.com/drive/1A5ocDslM9ZTo1pbt6klaV4Uo0LVjx3kF?usp=sharing) to clone private repositories from Github using SSH protocol.

Go to [Google Colab](https://colab.research.google.com/), create a new notebook, and click the button named **connect **in the top right corner of the page.

### **Step 1:**

Now, generate SSH keys by running the following command from a code cell

    !ssh-keygen -t rsa -b 4096

The public key algorithm is selected using the -t option and key size using the -b option.

After running the code cell by pressing Shift+Enter some instructions will appear.

    > Enter a file in which to save the key (/home/*you*/.ssh/id_rsa): *[Press enter]*

    > Enter passphrase (empty for no passphrase): *[Press enter]*

    > Enter same passphrase again: *[Press enter]*

If any passphrase is provided by the user, SSH keys will be generated successfully. However, later it will causePermission deniederror while cloning the private repository from Github.

    debug1: read_passphrase: can't open /dev/tty: No such device or address 
    debug1: Trying private key: /root/.ssh/id_dsa 
    debug1: Trying private key: /root/.ssh/id_ecdsa 
    debug1: Trying private key: /root/.ssh/id_ed25519 
    debug1: No more authentication methods to try. 
    git@github.com: Permission denied (publickey).

So, no passphrase must be given while generating SSH keys. Just press Enter and leave the field empty.

### **Step 2:**

Add SSH key fingerprints to the known_hosts file-

    !ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts

This would only work properly if you have the SSH key authentication setup.

### **Step 3:**

We need to add the newly created SSH key to the Github account. These steps are exactly the same as adding a new SSH key in Github for any local machine.

To achieve that, first get the SSH key by running this command and copy the output.

    !cat /root/.ssh/id_rsa.pub

After that, follow these instructions from official Github documentation for [adding a new SSH key to your Github account](https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account).

Test SSH key-

    !ssh -T git@github.com

    > Hi YourName! You've successfully authenticated, but GitHub does not provide shell access.

### **Step 4 (Optional):**

By following the above four steps, one can successfully clone a private repository. If anyone wants to commit and push code changes from Google Colab to the private repo in Github, then must be specified Git configuration settings. It can be achieved by-

    !git config --global user.email "your_email@example.com"

    !git config --global user.name "your_name"

If everything goes well, you will able to clone private repositories from Github in Google Colab.

    !git clone git@github.com:SadiaAfrinPurba/demo-private-repo.git
>  Do not forget to clone repositories via SSH URLs

**Troubleshooting:**

To debug what went wrong run this command- !ssh -vT git@github.com

The SSH key is valid for each Google Colab session which means for a new session you need to repeat the above steps. I have written a short and simple bash script to avoid doing repetitive tasks.

Clone [this repository](https://github.com/SadiaAfrinPurba/google-colab-ssh) and run the following commands from Google Colab-

    !cd google_colab_ssh
    !sh private_repo_clone.sh "your_name@example.com" "your_name"

The script will only generate a new SSH key for Google Colab. You still need to add the SSH key to Github (Step 3) manually. I prefer to delete the SSH keys from Github after finishing the work in Google Colab.

## **Conclusion**

I can achieve what I wanted to do by uploading the source codes into Google Drive. But I prefer to track any code versioning by using Git. I hope this tutorial will be helpful to anyone who is exploring machine learning and deep learning. Thank you!

