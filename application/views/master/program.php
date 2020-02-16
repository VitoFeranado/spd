     <!-- Begin Page Content -->
     <div class="container-fluid">

         <!-- Page Heading -->
         <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>



         <div class="row">
             <div class="col-lg-12">
                 <?= form_error('menu', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                 <?= $this->session->flashdata('message'); ?>
                 <a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newProgramModal">Tambah Program</a>

                 <table border="collapse" cellpadding="5" class="mytable" style="text-align: center" width="100%">
                     <thead>
                         <tr>
                             <th scope="col" width="30">#</th>
                             <th scope="col" colspan='3'>Kode Program</th>
                             <th scope="col" width="50">Nama program</th>
                             <th scope="col">Status</th>
                             <th scope="col">Aksi</th>
                         </tr>
                     </thead>
                     <tbody>
                         <?php $i = 1; ?>
                         <?php foreach ($programmaster as $m) : ?>
                             <tr>
                                 <th scope="row"><?= $i; ?></th>
                                 <td width="30"><?= $m['id_urusan']; ?></td>
                                 <td width="30"><?= $m['id_bidang']; ?></td>
                                 <td width="30"><?= $m['kode_program']; ?></td>
                                 <td style="text-align: left" width="70%"><?= $m['nama_program']; ?></td>
                                 <td><?= $m['status']; ?></td>
                                 <td>
                                     <a href="" class="badge badge-success" data-toggle="modal" data-target="#newProgrameditModal<?= $m['id_program']; ?>">edit</a>
                                     <a href="<?php echo site_url('master/hapusprogram/' . $m['id_program']); ?>" onclick="return confirm('Apakah Anda Ingin Menghapus Data (<?= $m['nama_program']; ?>) ?');" class="badge badge-danger" data-popup="tooltip" data-placement="top" title="Hapus Data">delete</a>
                                 </td>
                             </tr>
                             <?php $i++; ?>
                         <?php endforeach; ?>
                     </tbody>
                 </table>
             </div>


         </div>

     </div>
     <!-- /.container-fluid -->

     </div>
     <!-- End of Main Content -->

     <!-- Modal tambah -->
     <div class="modal fade" id="newProgramModal" tabindex="-1" role="dialog" aria-labelledby="newProgramModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
             <div class="modal-content">
                 <div class="modal-header">
                     <h5 class="modal-title" id="newProgramModalLabel">Tambah Program</h5>
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                         <span aria-hidden="true">&times;</span>
                     </button>
                 </div>
                 <form action="<?= base_url('master/program'); ?>" method="post">
                     <div class="modal-body">
                         <div class="form-group">
                             <select name="id_urusan" id="id_urusan" class="form-control">
                                 <option value="">Pilih Urusan</option>
                                 <?php foreach ($nama_urusan as $u) : ?>
                                     <option value="<?= $u['kode_urusan']; ?>"><?= $u['nama_urusan']; ?></option>
                                 <?php endforeach; ?>
                             </select>
                         </div>
                         <div class="form-group">
                             <select name="id_skpd" id="id_skpd" class="form-control">
                                 <option value="">Pilih SKPD</option>
                                 <?php foreach ($nama_skpd as $s) : ?>
                                     <option value="<?= $s['id_skpd']; ?>"><?= $s['nama_skpd']; ?></option>
                                 <?php endforeach; ?>
                             </select>
                         </div>
                         <div class="form-group">
                             <select name="id_bidang" id="id_bidang" class="form-control">
                                 <option value="">Pilih Bidang</option>
                                 <?php foreach ($nama_bidang as $b) : ?>
                                     <option value="<?= $b['id_bidang']; ?>"><?= $b['nama_bidang']; ?></option>
                                 <?php endforeach; ?>
                             </select>
                         </div>
                         <div class="form-group">
                             <input type="text" class="form-control" id="kode_program" name="kode_program" placeholder="Kode Program">
                         </div>
                         <div class="form-group">
                             <input type="text" class="form-control" id="nama_program" name="nama_program" placeholder="Nama Program">
                         </div>
                         <div class="form-group">
                             <input type="text" class="form-control" id="status" name="status" placeholder="Status">
                         </div>
                     </div>
                     <div class="modal-footer">
                         <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                         <button type="submit" class="btn btn-primary">Add</button>
                     </div>
                 </form>
             </div>
         </div>
     </div>

     <!-- modal edit -->
     <?php $no = 0;
        foreach ($programmaster as $m) : $no++; ?>
         <div class="modal fade" id="newProgrameditModal<?= $m['id_program'] ?>" tabindex="-1" role="dialog" aria-labelledby="newProgrameditModalLabel" aria-hidden="true">
             <div class="modal-dialog" role="document">
                 <div class="modal-content">
                     <div class="modal-header">
                         <h5 class="modal-title" id="newProgrameditModalLabel">Edit</h5>
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                         </button>
                     </div>
                     <form action="<?= base_url('master/editprogram') ?>" method="post">
                         <div class="modal-body">
                             <div class="form-group">
                                 <th scope="col">ID Urusan</th>
                                 <input type="text" class="form-control" id="id_urusan" name="id_urusan" value="<?= $m['id_urusan'] ?>">
                             </div>
                             <div class="form-group">
                                 <th scope="col">ID SKPD</th>
                                 <input type="text" class="form-control" id="id_skpd" name="id_skpd" value="<?= $m['id_skpd'] ?>">
                             </div>
                             <div class="form-group">
                                 <th scope="col">Kode Program</th>
                                 <input type="text" class="form-control" id="kode_program" name="kode_program" value="<?= $m['kode_program'] ?>">
                             </div>
                             <div class="form-group">
                                 <th scope="col">Nama Program</th>
                                 <input type="text" class="form-control" id="nama_program" name="nama_program" value="<?= $m['nama_program'] ?>">
                             </div>
                             <div class="form-group">
                                 <th scope="col">Status</th>
                                 <input type="text" class="form-control" id="status" name="status" value="<?= $m['status'] ?>">
                             </div>
                         </div>
                         <div class="modal-footer">
                             <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                             <button type="submit" class="btn btn-primary">Edit</button>
                         </div>
                     </form>
                 </div>
             </div>
         </div>
     <?php endforeach; ?>